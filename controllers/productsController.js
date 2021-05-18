const fs = require('fs');
const path = require('path');
const { validationResult } = require('express-validator');
const db = require('../database/models');
const sequelize = db.sequelize;
const Producto = require('../services/Products');
const Product = require('../services/Products');

const dataJSON = path.join(__dirname, '../data/products.json');

controller = {
	products: (req, res) => {
		let productsJSON = fs.readFileSync(dataJSON, { encoding: 'utf-8' });
		let products = JSON.parse(productsJSON);
		res.render('./products/products', { products });
	},
	detail: async (req, res) => {
		let productSearch = await Producto.oneProduct(req.params.id);
		let product = productSearch.dataValues;
		//console.log(product.tipo_producto.nombre);
		res.render('./products/productDetail', { product });
	},
	cart: (req, res) => {
		if (req.session && req.session.cart) {
			let cart = req.session.cart;
			const account = {
				total: function () {
					let total = 0;
					cart.forEach((product) => {
						total = total + product.price * product.amount;
					});
					return total;
				},
				subtotal: () => this.total() - this.total() * 0.21,
				impuestos: () => this.total() * 0.21,
			};
			res.render('./products/productCart', { cart, account });
		}
		res.render('./products/productCart', { cart: null, account: null });
	},
	cartAdd: (req, res) => {
		let productsJSON = fs.readFileSync(dataJSON, { encoding: 'utf-8' });
		let products = JSON.parse(productsJSON);
		if (req.session.cart) {
			let product = products.find((prod) => prod.id == req.params.id);
			req.session.cart.push({
				id: product.id,
				name: product.name,
				description: product.specs.join(', '),
				image: product.img[0],
				price: product.price,
				amount: req.body.productAmount,
			});
		} else {
			req.session.cart = [];
			let product = products.find((prod) => prod.id == req.params.id);
			req.session.cart.push({
				id: product.id,
				name: product.name,
				description: product.specs.join(', '),
				image: product.img[0],
				price: product.price,
				amount: req.body.productAmount,
			});
		}
		return res.redirect(`/products/detail/${req.params.id}`);
	},
	cartDelete: (req, res) => {},
	createView: async (req, res) => {
		let categories = await Producto.datosCreate('Tipo_producto');
		let iva = await Producto.datosCreate('Iva');
		let marcas = await Producto.datosCreate('Marca');
		let uni_medida = await Producto.datosCreate('Uni_medida');

		res.render('./products/productCreate', {
			categories,
			uni_medida,
			marcas,
			iva,
		});
	},
	create: async (req, res) => {
		let validationErrors = validationResult(req);
		let categories = await Producto.datosCreate('Tipo_producto');
		let iva = await Producto.datosCreate('Iva');
		let marcas = await Producto.datosCreate('Marca');
		let uni_medida = await Producto.datosCreate('Uni_medida');
		if (validationErrors.isEmpty()) {
			let imagenes = [];
			req.files.forEach((element) => {
				imagenes.push({ imagen: element.filename });
			});
			let spec = [];
			if (req.body.productTopSpec1)
				spec.push({ caracteristica: req.body.productTopSpec1 });
			if (req.body.productTopSpec2)
				spec.push({ caracteristica: req.body.productTopSpec2 });
			if (req.body.productTopSpec3)
				spec.push({ caracteristica: req.body.productTopSpec3 });
			if (req.body.productTopSpec4)
				spec.push({ caracteristica: req.body.productTopSpec4 });

			//let spec = { caracteristica: req.body.productTopSpec1 };
			let producto = {
				nombre: req.body.productName,
				tipo_producto_id: req.body.productCategory,
				marca_id: req.body.marca,
				descripcion: req.body.productDescription,
				descuento_oferta: req.body.highlighted ? true : false,
				codigo: req.body.productCode,
				precio: req.body.productPrice,
				uni_medida_id: req.body.uniMedida,
				iva_id: req.body.iva,
				cantidad_real: req.body.cantidadInicial,
				createdAt: new Date(),
			};
			let newProduct = await Producto.create(producto, imagenes, spec);
			//console.log(newProduct);
			return res.redirect(`/products/detail/${newProduct.id}`);
		}
		return res.render('./products/productCreate', {
			errors: validationErrors.mapped(),
			oldData: req.body,
			categories,
			marcas,
			uni_medida,
			iva,
		});
	},
	list: async (req, res) => {
		let products = await Product.allProducts({
			include: [
				{ association: 'caracteristicas' },
				{ association: 'especificaciones' },
				{ association: 'imagenes' },
				{ association: 'iva' },
				{ association: 'marca' },
				{ association: 'tipo_producto' },
				{ association: 'uni_medida' },
			],
		});
		res.render('./products/productsList', { products });
	},
	editPrice: (req, res) => {
		let products = JSON.parse(fs.readFileSync(dataJSON, 'utf-8'));
		let product = products.find((product) => product.id == req.params.id);
		products.forEach((productEach) => {
			if (productEach.id == product.id) {
				productEach.price = req.body.price ? req.body.price : '';
			}
		});
		fs.writeFileSync(dataJSON, JSON.stringify(products, null, 4));
		return res.redirect('/products/listado');
	},
	editHighlighted: (req, res) => {
		let products = JSON.parse(fs.readFileSync(dataJSON, 'utf-8'));
		let product = products.find((product) => product.id == req.params.id);
		products.forEach((productEach) => {
			if (productEach.id == product.id) {
				productEach.highlighted = req.body.highlighted ? true : false;
			}
		});
		fs.writeFileSync(dataJSON, JSON.stringify(products, null, 4));
		return res.redirect('/products/listado');
	},
	editView: (req, res) => {
		let productsJSON = fs.readFileSync(dataJSON, { encoding: 'utf-8' });
		let products = JSON.parse(productsJSON);
		let product = products.find((prod) => prod.id == req.params.id);
		res.render('./products/productEdit', { product });
	},
	edit: (req, res) => {
		let validationErrors = validationResult(req);
		let products = JSON.parse(fs.readFileSync(dataJSON, 'utf-8'));
		let product = products.find((product) => product.id == req.params.id);
		if (validationErrors.isEmpty()) {
			products.forEach((productEach) => {
				if (productEach.id == product.id) {
					productEach.name = req.body.productName;
					productEach.specs[0] = req.body.productTopSpec1;
					productEach.specs[1] = req.body.productTopSpec2;
					productEach.specs[2] = req.body.productTopSpec3;
					productEach.specs[3] = req.body.productTopSpec4;
					productEach.description = req.body.productDescription;
					productEach.category = req.body.productCategory;
					productEach.price = req.body.productPrice;
					productEach.highlighted = req.body.highlighted
						? true
						: false;
				}
			});
			fs.writeFileSync(dataJSON, JSON.stringify(products, null, 4));
			return res.redirect(`/products/detail/${product.id}`);
		}
		return res.render('./products/productEdit', {
			errors: validationErrors.mapped(),
			product,
		});
	},
	delete: (req, res) => {
		let products = JSON.parse(fs.readFileSync(dataJSON, 'utf-8'));
		let index = products.indexOf((product) => product.id == req.params.id);

		// let userToDelete = this.findByID(id);
		// let index = allUsers.indexOf(userToDelete);
		products.splice(index, 1);
		fs.writeFileSync(dataJSON, JSON.stringify(products, null, 4));
		return res.redirect('/products');
	},
};
module.exports = controller;
