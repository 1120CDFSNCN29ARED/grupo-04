const express = require("express");
const router = express.Router();
//const upload = require("../middlewares/multer");
//const usersController = require("../controllers/usersController");
//const validations = require("../middlewares/validation");
//const accessControls = require("../middlewares/accessControls");
const domController = require("../../controllers/apiControllers/apiDomicilios");

router.get("/:id", domController.findDomicilioUsuario);

module.exports = router;
