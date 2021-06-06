const express = require("express");
const router = express.Router();
const apiUsers = require("../../controllers/apiControllers/apiUser");
const apiProductos = require("../../controllers/apiControllers/apiProductos");
const apiCompras = require("../../controllers/apiControllers/apiCompras");
const apiPedidos = require("../../controllers/apiControllers/apiPedidos");

router.get("/last", apiUsers.lastUser);
router.get("/total/:page", apiUsers.findAll);
router.get("/:id", apiUsers.findOne);
router.get("/img/:imagen", apiUsers.image);

module.exports = router;
