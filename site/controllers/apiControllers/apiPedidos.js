const db = require("../../database/models");
const { Op } = require("sequelize");

const apiPedidos = {
    findAll: async (req, res) => {
        const allPedidos = await db.Pedido.findAll({
            logging: false,
            attributes: ["cantidad", "createdAt"],
            where: { compra_id: null },

            include: [
                {
                    association: "producto",
                    include: [
                        { association: "marca", attributes: ["nombre"] },
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
            ],
        });
        let pedidos = {
            count: allPedidos.length,
            data: allPedidos,
        };
        //console.log(allCompras.length);
        return res.json(pedidos);
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

module.exports = apiPedidos;
