const db = require("../../database/models");

const apiProductos = {
    findAll: async (req, res) => {
        const allProducts = await db.Producto.findAll({
            logging: false,
            attributes: [
                "id",
                "nombre",
                "descuento_oferta",
                "precio",
                "cantidad_real",
                "cantidad_en_pedido",
                "createdAt",
                "updatedAt",
            ],
            include: [
                { association: "tipo_producto", attributes: ["nombre"] },
                { association: "marca", attributes: ["nombre"] },
                { association: "imagenes", attributes: ["imagen"], limit: 1 },
            ],
        });
        let products = {
            count: allProducts.length,
            data: allProducts,
        };
        return res.json(products);
    },
    findOne: async (req, res) => {
        let productFound = await db.Producto.findOne({
            logging: false,
            where: { id: req.params.id },
            logging: false,
            attributes: [
                "id",
                "nombre",
                "descuento_oferta",
                "precio",
                "cantidad_real",
                "cantidad_en_pedido",
            ],
            include: [
                { association: "tipo_producto", attributes: ["nombre"] },
                { association: "marca", attributes: ["nombre"] },
                { association: "imagenes", attributes: ["imagen"] },
            ],
        });
        return res.json(productFound);
    },
    findAllByCat: async (req, res) => {
        const productsByCat = await db.Producto.findAll({
            logging: false,
            attributes: [
                "id",
                "nombre",
                "descuento_oferta",
                "precio",
                "cantidad_real",
                "cantidad_en_pedido",
            ],
            where: { tipo_producto_id: req.params.cat },
            include: [
                { association: "marca", attributes: ["nombre"] },
                { association: "imagenes", attributes: ["imagen"] },
            ],
        });
        let products = {
            count: productsByCat.length,
            data: productsByCat,
        };
        return res.json(products);
    },
    findCategorias: async (req, res) => {
        let categoriasData = await db.Tipo_producto.findAll({
            logging: false,
            attributes: ["id", "nombre"],
        });
        let categorias = {
            count: categoriasData.length,
            data: categoriasData,
        };
        return res.json(categorias);
    },
};

module.exports = apiProductos;
