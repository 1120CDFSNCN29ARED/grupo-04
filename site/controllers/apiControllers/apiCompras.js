const db = require("../../database/models");
const { Op } = require("sequelize");

const apiCompras = {
    findAll: async (req, res) => {
        const allComprasRaw = await db.Compra.findAll({
            logging: false,
            attributes: ["fecha"],
            include: [
                {
                    association: "pedidos",
                    include: [
                        {
                            association: "producto",
                            include: [
                                {
                                    association: "marca",
                                    attributes: ["nombre"],
                                },
                                {
                                    association: "imagenes",
                                    attributes: ["imagen"],
                                    limit: 1,
                                },
                            ],
                            attributes: ["id", "nombre"],
                        },
                    ],
                    attributes: ["cantidad", "precio_compra"],
                },
                {
                    association: "user",
                    attributes: ["id", "name", "last_name", "email"],
                },
            ],
        });
        const allCompras = allComprasRaw.map((compra) => {
            compra.total = compra.pedidos.reduce((tot, item) => {
                return tot + item.precio_compra * item.cantidad;
            }, 0);
            return compra;
        });
        //console.log(allCompras[0].total);
        let ventas = {
            count: allCompras.length,
            data: allCompras,
        };
        return res.json(ventas);
    },
    findOne: async (req, res) => {
        let compraFound = await db.Pedido.findOne({
            logging: false,
            attributes: ["cantidad", "precio_compra"],
            where: { compra_id: req.params.id },
            include: [
                {
                    association: "producto",
                    include: [
                        {
                            association: "marca",
                            attributes: ["nombre"],
                        },
                        {
                            association: "imagenes",
                            attributes: ["imagen"],
                            limit: 1,
                        },
                    ],
                    attributes: ["id", "nombre"],
                },
                {
                    association: "user",
                    attributes: ["id", "name", "last_name", "email"],
                },
                {
                    association: "compra",
                    attributes: ["fecha"],
                },
            ],
        });
        return res.json(compraFound);
    },
    // findByUser: async (req, res) {

    // },
    // findByProduct: async (req, res) {

    // }
};

module.exports = apiCompras;
