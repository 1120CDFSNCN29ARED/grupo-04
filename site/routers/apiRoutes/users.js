const express = require("express");
const router = express.Router();
const apiUser = require("../../controllers/apiControllers/apiUser");

router.get("/", apiUser.find);

module.exports = router;
