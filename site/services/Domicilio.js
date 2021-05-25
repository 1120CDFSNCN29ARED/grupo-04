const db = require("../database/models");

const Domicilio = {
  create: async function (address) {
    let newAddress = await db.Domicilio.create({
      user_id: address.user_id,
      calle: address.calle,
      cp: address.cp,
      pais_id: address.pais,
      localidad: address.localidad,
      provincia_id: address.provincia,
      envio: address.envio,
    });
    return newAddress;
  },
  updateDomicilio: async function (domicilio) {
    let domUpdated = await db.Domicilio.update(
      {
        calle: domicilio.calle,
        cp: domicilio.cp,
        pais_id: domicilio.pais,
        localidad: domicilio.localidad,
        provincia_id: domicilio.provincia,
        envio: domicilio.envio,
      },
      { where: { id: domicilio.id } }
    );
    return domUpdated;
  },
  findByID: async function (id) {
    let domFound = await db.Domicilio.findByPk(id);
    console.log("Domicilio en service: " + domFound);
    return domFound;
  },
  delete: function (domId) {
    db.Domicilio.destroy({
      where: { id: domId },
    });
  },
};

module.exports = Domicilio;
