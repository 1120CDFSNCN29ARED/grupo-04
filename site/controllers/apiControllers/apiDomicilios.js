const db = require("../../database/models");

controller = {
    findDomicilioUsuario: async (req, res) => {
        let domicilio = await db.Domicilio.findAll({
            where: { user_id: req.params.id },
            include: [{ association: "paises" }, { association: "provincias" }],
        });
        res.json(domicilio);
    },
    provincias: async (req, res) => {
        console.log("provincias");
        const provincias = await db.Provincia.findAll({
            attributes: ["id", "nombre"],
            where: { pais_id: req.params.id },
        });
        //console.log(provincias);
        res.json(provincias);
    },
};

module.exports = controller;
