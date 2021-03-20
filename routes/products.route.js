const express = require('express');
const router = express.Router();

const productController = require('../controllers/products.controller');
const middleware = require('../middleware/main');

router.get('/list', middleware.pagination, productController.products);
router.get('/update/featured', productController.updateFeautured);

module.exports = router;