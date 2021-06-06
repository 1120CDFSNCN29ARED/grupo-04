const express = require("express");
const router = express.Router();
const apiPedidos = require("../../controllers/apiControllers/apiPedidos");

router.get("/", apiPedidos.findAll);

module.exports = router;
