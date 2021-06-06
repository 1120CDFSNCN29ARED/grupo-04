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

router.get("/productos", apiProductos.findAll);
router.get("/productos/cat", apiProductos.findCategorias);
router.get("/productos/cat/:cat", apiProductos.findAllByCat);
router.get("/productos/last", apiProductos.findLast);
router.get("/productos/:id", apiProductos.findOne);
router.get("/compras", apiCompras.findAll);
router.get("/compras/last", apiCompras.findLast);
router.get("/compras/:id", apiCompras.findOne);
router.get("/pedidos", apiPedidos.findAll);

module.exports = router;
