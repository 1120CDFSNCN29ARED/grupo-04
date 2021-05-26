const express = require("express");
const router = express.Router();
const apiUsers = require("../../controllers/apiControllers/apiUser");

router.get("/users", apiUsers.findAll);
router.get("/users/:id", apiUsers.findOne);
router.get("/users/img/:imagen", apiUsers.image);

module.exports = router;
