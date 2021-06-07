const db = require("../../database/models");
const { user } = require("../../middlewares/multer");
const path = require("path");

const apiUsers = {
    findAll: async (req, res) => {
        const total = await db.User.count();
        const pages = Math.ceil(total / 10);
        const allUsers = await db.User.findAndCountAll({
            limit: 10,
            offset: 10 * (req.params.page - 1),
            attributes: ["id", "name", "last_name", "email"],
        });
        const usersApi = allUsers.rows.map((user) => {
            return {
                id: user.id,
                name: user.name,
                last_name: user.last_name,
                email: user.email,
                detail: `http://www.pccomponents.com.ar/api/users/${user.id}`,
            };
        });
        const usersApiResult = {
            count: allUsers.count,
            users: usersApi,
            totalPages: pages,
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
        userFound.image = `http://www.pccomponents.com.ar/api/users/img/${userFound.image}`;
        res.json(userFound);
    },
    image: (req, res) => {
        res.sendFile(
            path.resolve(
                __dirname,
                `../../public/img/users/${req.params.imagen}`
            )
        );
    },
    lastUser: async (req, res) => {
        let lastUser = await db.User.findAll({
            limit: 1,
            order: [["id", "DESC"]],
            attributes: [
                "id",
                "name",
                "last_name",
                "email",
                "telefono",
                "image",
                "medio_pago",
                "createdAt",
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
        lastUser[0].image = `http://www.pccomponents.com.ar/api/users/img/${lastUser[0].image}`;
        res.json(lastUser);
    },
};

module.exports = apiUsers;
