const db = require("../../database/models");
const { user } = require("../../middlewares/multer");
const path = require("path");

const apiUsers = {
  findAll: async (req, res) => {
    const allUsers = await db.User.findAndCountAll({
      attributes: ["id", "name", "last_name", "email"],
    });
    const usersApi = allUsers.rows.map((user) => {
      return {
        id: user.id,
        name: user.name,
        last_name: user.last_name,
        email: user.email,
        detail: `http://localhost:4000/api/users/${user.id}`,
      };
    });
    const usersApiResult = {
      count: allUsers.count,
      users: usersApi,
    };
    res.json(usersApiResult);
  },
  findOne: async (req, res) => {
    let userFound = await db.User.findOne({
      logging: false,
      where: { id: req.params.id },
      attributes: [
        "id",
        "name",
        "last_name",
        "email",
        "telefono",
        "image",
        "medio_pago",
      ],
      include: [
        {
          association: "domicilio",
          attributes: ["calle", "cp", "localidad"],
          include: [
            { association: "paises", attributes: ["nombre"] },
            { association: "provincias", attributes: ["nombre"] },
          ],
        },
      ],
    });
    userFound.image = `http://localhost:4000/api/users/img/${userFound.image}`;
    res.json(userFound);
  },
  image: (req, res) => {
    res.sendFile(
      path.resolve(__dirname, `../../public/img/users/${req.params.imagen}`)
    );
  },
};

module.exports = apiUsers;
