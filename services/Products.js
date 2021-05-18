const db = require('../database/models');
const sequelize = db.sequelize;

const Product = {
	allProducts: async function () {
		let all = await db.Producto.findAll();
		return all;
	},
	datosCreate: async function (tabla) {
		let datos = await db[tabla].findAll();
		return datos;
	},
	create: async function (producto, imagenes, spec) {
		console.log(spec);
		console.log(imagenes);
		let newProduct = await db.Producto.create(
			{
				...producto,
				caracteristicas: spec,
				imagenes: imagenes,
			},
			{
				include: [
					{ association: 'caracteristicas' },
					{ association: 'imagenes' },
				],
			}
		);
		return newProduct;
	},
	oneProduct: async function (id) {
		let product = await db.Producto.findOne({
			where: { id: id },
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
		return product;
	},
};

module.exports = Product;
