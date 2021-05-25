const db = require("../../database/models");
const UserService = require("../../services/Users");

const apiUser = {
  find: async (req, res) => {
    let users = await db.User.findAll();
    res.json(users);
  },
};

module.exports = apiUser;
