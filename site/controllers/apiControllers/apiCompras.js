const db = require("../../database/models");
const { Op } = require("sequelize");

const apiCompras = {
    findAll: async (req, res) => {
        const allCompras = await db.Pedido.findAll({
            logging: false,
            attributes: ["compra_id", "cantidad", "precio_compra"],
            where: { compra_id: { [Op.ne]: null } },
            group: ["compra_id"],
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
                {
                    association: "compra",
                    attributes: ["fecha"],
                },
            ],
        });
        let compras = {
            count: allCompras.length,
            data: allCompras,
        };
        //console.log(allCompras.length);
        res.json(compras);
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
        res.json(compraFound);
    },
    // findByUser: async (req, res) {

    // },
    // findByProduct: async (req, res) {

    // }
};

module.exports = apiCompras;
