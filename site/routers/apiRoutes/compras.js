const express = require("express");
const router = express.Router();
const apiCompras = require("../../controllers/apiControllers/apiCompras");

router.get("/", apiCompras.findAll);
router.get("/last", apiCompras.findLast);
router.get("/:id", apiCompras.findOne);

module.exports = router;
