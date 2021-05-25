const db = require("../../database/models");

controller = {
  findDomicilioUsuario: async (req, res) => {
    let domicilio = await db.Domicilio.findAll({
      where: { user_id: req.params.id },
      include: [{ association: "paises" }, { association: "provincias" }],
    });
    res.json(domicilio);
  },
};

module.exports = controller;
