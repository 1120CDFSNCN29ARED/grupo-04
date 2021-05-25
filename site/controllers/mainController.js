const path = require('path');
const fs = require('fs');
const db = require('../database/models');
const Producto = require('../services/Products');

const dataJSON = path.join(__dirname, '../data/users.json');
const dataProductsJSON = path.join(__dirname, '../data/products.json');

controller = {
	index: async (req, res) => {
		let productsH = await Producto.highlighted();
		console.log(productsH);
		res.render('./index', { productsH });
	},
	indexUser: (req, res) => {
		const users = JSON.parse(fs.readFileSync(dataJSON, 'utf-8'));
		const user = users.find((user) => user.id == req.params.id);
		res.render('./indexUser', { user });
	},
	search: (req, res) => {
		res.render('./search', { searchProducts });
	},
};

module.exports = controller;
