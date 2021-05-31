const express = require("express");
const router = express.Router();
const path = require("path");

const accessControls = require("../middlewares/accessControls");
const upload = require("../middlewares/multer");
const productValidationMiddleware = require("../middlewares/productValidationMiddleware");

const productsController = require("../controllers/productsController");

router.get("/", productsController.products);
router.get("/detail/:id", productsController.detail);
router.get("/cart", accessControls.notLogged, productsController.cart);
router.put(
    "/cart/edit/:id/:prod",
    accessControls.notLogged,
    productsController.editCart
);
router.delete(
    "/cart/delete/:id/:prod",
    accessControls.notLogged,
    productsController.cartDelete
);
router.post("/cart/buy", accessControls.notLogged, productsController.cartBuy);
router.get(
    "/cart/buy",
    accessControls.notLogged,
    productsController.purchasesView
);
router.put("/cart/:id", accessControls.notLogged, productsController.addCart);
router.get(
    "/create",
    accessControls.notLogged,
    accessControls.admin,
    productsController.createView
);
router.post(
    "/create",
    accessControls.notLogged,
    accessControls.admin,
    upload.product.array("productImg"),
    productValidationMiddleware.create,
    productsController.create
);
router.get(
    "/listado",
    accessControls.notLogged,
    accessControls.admin,
    productsController.list
);
router.get(
    "/edit/:id",
    accessControls.notLogged,
    accessControls.admin,
    productsController.editView
);
router.put(
    "/edit/:id",
    accessControls.notLogged,
    accessControls.admin,
    upload.product.array("productImg"),
    productsController.edit
);
router.put(
    "/edit/price/:id",
    accessControls.notLogged,
    accessControls.admin,
    productsController.editPrice
);
router.put(
    "/edit/highlighted/:id",
    accessControls.notLogged,
    accessControls.admin,
    productsController.editHighlighted
);
router.delete(
    "/delete/:id",
    accessControls.notLogged,
    accessControls.admin,
    productsController.delete
);
router.get("/search/", productsController.search);

module.exports = router;
