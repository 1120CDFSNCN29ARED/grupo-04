const express = require ('express');
const router = express.Router();
const productController = require ('../controllers/productController');

router.get('/', productController.detail);
router.get('/cart', productController.cart);

module.exports = router;