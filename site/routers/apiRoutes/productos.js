const express = require("express");
const router = express.Router();
const apiProductos = require("../../controllers/apiControllers/apiProductos");

router.get("/", apiProductos.findAll);
router.get("/cat", apiProductos.findCategorias);
router.get("/cat/:cat", apiProductos.findAllByCat);
router.get("/last", apiProductos.findLast);
router.get("/:id", apiProductos.findOne);

module.exports = router;
