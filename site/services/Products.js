const db = require("../database/models");
const sequelize = db.sequelize;

const Product = {
    allProducts: async function () {
        let all = await db.Producto.findAll({
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
            attributes: ["nombre", "id"],
            include: [{ association: "imagenes", attributes: ["imagen"] }],
        });
        return products;
    },
    list: async function (page, sort = "id") {
        let products = await db.Producto.findAll({
            //offset: page * 10,
            //order: [[`${sort}`, 'DESC']],
            include: [
                { association: "imagenes" },
                { association: "marca" },
                { association: "tipo_producto" },
            ],
        });
        return products;
    },
    update: async function (producto, imagenes, spec) {
        await db.Producto.update(
            {
                ...producto,
                //caracteristicas: spec,
                //imagenes: imagenes,
            },
            //{
            //	include: [
            //		{ association: 'caracteristicas' },
            //		{ association: 'imagenes' },
            //	],
            //},
            { where: { id: producto.id } }
        );
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
