const db = require("../database/models");
const sequelize = db.sequelize;
const { Op, DATEONLY } = require("sequelize");

const Product = {
    updateStock: async function (producto) {
        let cantidadPedidos = await db.Pedido.sum("cantidad", {
            logging: false,
            where: {
                [Op.and]: [{ producto_id: producto }, { compra_id: null }],
            },
        });
        await db.Producto.update(
            {
                cantidad_en_pedido: cantidadPedidos,
            },
            {
                where: { id: producto },
                logging: false,
            }
        );
    },
    allProducts: async function () {
        let all = await db.Producto.findAll({
            logging: false,
            include: [{ association: "imagenes", attributes: ["imagen"] }],
        });
        return all;
    },
    datosCreate: async function (tabla) {
        let datos = await db[tabla].findAll({
            logging: false,
            attributes: { exclude: ["createdAt", "updatedAt"] },
        });
        return datos;
    },
    create: async function (producto, imagenes, spec) {
        let newProduct = await db.Producto.create(
            {
                ...producto,
                caracteristicas: spec,
                imagenes: imagenes,
                cantidad_en_pedido: 0,
            },
            {
                include: [
                    { association: "caracteristicas" },
                    { association: "imagenes" },
                ],
            }
        );
        return newProduct;
    },
    oneProduct: async function (id) {
        let product = await db.Producto.findOne({
            logging: false,
            where: { id: id },
            include: [
                { association: "caracteristicas" },
                { association: "especificaciones" },
                { association: "imagenes" },
                { association: "iva" },
                { association: "marca" },
                { association: "tipo_producto" },
                { association: "uni_medida" },
            ],
        });
        return product;
    },
    highlighted: async function () {
        let products = await db.Producto.findAll({
            where: { descuento_oferta: true },
            logging: false,
            include: [{ association: "imagenes", attributes: ["imagen"] }],
        });
        const productsWithImage = products.filter(
            (product) =>
                product.imagenes.length > 0 &&
                product.cantidad_real > product.cantidad_en_pedido &&
                product.precio > 0
        );
        return productsWithImage;
    },
    list: async function (page, sort = "id") {
        let products = await db.Producto.findAll({
            //offset: page * 10,
            //order: [[`${sort}`, 'DESC']],
            logging: false,
            include: [
                { association: "imagenes" },
                { association: "marca" },
                { association: "tipo_producto" },
            ],
        });
        return products;
    },
    search: async function (search) {
        let products = await db.Producto.findAll({
            //offset: page * 10,
            //order: [[`${sort}`, 'DESC']],
            where: {
                [Op.or]: [
                    { nombre: { [Op.like]: `%${search}%` } },
                    { descripcion: { [Op.like]: `%${search}%` } },
                ],
            },
            include: [
                { association: "imagenes" },
                { association: "marca" },
                { association: "tipo_producto" },
            ],
        });
        return products;
    },
    update: async function (producto, imagenes, spec) {
        let precioForm = producto.precio ? producto.precio : 0;
        producto.precio = precioForm;
        await db.Producto.update(
            {
                ...producto,
            },
            { where: { id: producto.id } }
        );
    },
    editPrice: async function (producto, precio) {
        await db.Producto.update(
            { precio: precio },
            { where: { id: producto } }
        );
    },
    addToCart: async function (producto, cantidadPedida, user) {
        let nuevoPedido = {
            producto_id: producto,
            cantidad: cantidadPedida,
            user_id: user,
        };
        let productoEnPedidoActivo = await db.Pedido.findOne({
            where: {
                [Op.and]: [
                    { producto_id: producto },
                    { user_id: user },
                    { compra_id: null },
                ],
            },
        });
        if (productoEnPedidoActivo) {
            await db.Pedido.update(
                {
                    cantidad:
                        Number(productoEnPedidoActivo.cantidad) +
                        Number(cantidadPedida),
                },
                { where: { id: productoEnPedidoActivo.id } }
            );
        } else {
            await db.Pedido.create(nuevoPedido);
        }
        await this.updateStock(producto);
    },
    cartView: async function (user) {
        //console.log(user);
        let pedidosActivos = await db.Pedido.findAll({
            logging: false,
            where: {
                [Op.and]: [{ user_id: user }, { compra_id: null }],
            },
            include: [
                {
                    association: "producto",
                    include: [
                        { association: "imagenes" },
                        { association: "iva" },
                        { association: "marca" },
                        { association: "tipo_producto" },
                    ],
                },
            ],
        });
        return pedidosActivos;
    },
    cartEdit: async function (pedido) {
        await db.Pedido.update(
            {
                cantidad: pedido.nuevaCantidad,
            },
            {
                where: { id: pedido.id },
            }
        );
        await this.updateStock(pedido.producto_id);
    },
    cartDelete: async function (pedido) {
        await db.Pedido.destroy({
            where: { id: pedido.id },
        });
        await this.updateStock(pedido.prod);
    },
    cartBuy: async function (user) {
        let newCompra = await db.Compra.create({
            user_id: user,
            fecha: new Date(),
        });
        let pedidosCompra = await this.cartView(user);
        const registro = pedidosCompra.map(async (pedido) => {
            await db.Pedido.update(
                {
                    compra_id: newCompra.id,
                    precio_compra: pedido.producto.precio,
                },
                { where: { id: pedido.id } }
            );
            await this.updateStock(pedido.producto.id);
        });
        const result = await Promise.all(registro);
        const resgistroProducto = pedidosCompra.map(async (pedido) => {
            await db.Producto.update(
                {
                    cantidad_real:
                        Number(pedido.producto.cantidad_real) -
                        Number(pedido.cantidad),
                },
                { where: { id: pedido.producto.id } }
            );
        });
        const resultProd = await Promise.all(resgistroProducto);
        return newCompra;
    },
    purchaseId: async function (id) {
        let detalleDeCompra = await db.Pedido.findAll({
            logging: false,
            where: { compra_id: id },
            include: [
                {
                    association: "producto",
                    include: [{ association: "imagenes" }],
                },
                { association: "compra" },
            ],
        });
        return detalleDeCompra;
    },
    purchasesView: async function (user) {
        let pedidosComprados = await db.Compra.findAll({
            logging: false,
            where: {
                user_id: user,
            },
            include: [
                {
                    association: "pedidos",
                    include: [
                        {
                            association: "producto",
                            include: [
                                { association: "imagenes" },
                                {
                                    association: "marca",
                                },
                            ],
                        },
                    ],
                },
                { association: "user" },
            ],
        });
        return pedidosComprados;
    },
    delete: async function (producto) {
        await db.Imagenes.destroy({
            where: { producto_id: producto },
        });
        await db.Especificaciones.destroy({
            where: { producto_id: producto },
        });
        await db.Caracteristicas.destroy({
            where: { producto_id: producto },
        });
        await db.Producto.destroy({
            where: { id: producto },
        });
    },
};

module.exports = Product;
