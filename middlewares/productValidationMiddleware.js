const { body } = require('express-validator');
const path = require('path');

module.exports = {
	create: [
		body('productName')
			.notEmpty()
			.withMessage('Debes completar el nombre')
			.bail()
			.isLength({ min: 5 })
			.withMessage('El nombre debe ser más largo'),
		body('productTopSpec1')
			.notEmpty()
			.withMessage(
				'Debes completar al menos una especificación principal'
			),
		body('productDescription')
			.notEmpty()
			.withMessage(
				'Debes agregar una descripción general para el producto'
			)
			.bail()
			.isLength({ min: 2 })
			.withMessage('La descripción debe ser más larga'),
		body('productCategory')
			.notEmpty()
			.withMessage('Debes seleccionar una categoría'),
		body('marca')
			.notEmpty()
			.withMessage('Debes seleccionar una marca para el producto'),
		body('uniMedida')
			.notEmpty()
			.withMessage('Debes seleccionar una unidad de medida'),
		body('iva')
			.notEmpty()
			.withMessage('Debes seleeccionar una categoría de IVA'),
		body('productCode')
			.notEmpty()
			.withMessage('Debes especificar un código de producto'),
		body('productPrice')
			.notEmpty()
			.withMessage('Debes completar el precio')
			.bail()
			.isNumeric({ no_symbols: true })
			.withMessage('Solo puedes ingresar números'),
		body('cantidadInicial')
			.notEmpty()
			.withMessage('Debes completar una cantidad inicial')
			.bail()
			.isNumeric({ no_symbols: true })
			.withMessage('Solo puedes ingresar números'),
		// body('productImg').custom((value, { req }) => {
		// 	let files = req.files;
		// 	let acceptedExtensions = ['.jpg', '.jpeg', '.png', '.webp'];
		// 	if (!files) {
		// 		throw new Error('Tienes que subir al menos una imagen');
		// 	}
		// 	files.forEach((image) => {
		// 		if (
		// 			acceptedExtensions.includes(
		// 				path.extname(image.originalname)
		// 			)
		// 		) {
		// 			throw new Error(
		// 				`Las imagenes permitidas son ${acceptedExtensions.join(
		// 					', '
		// 				)}`
		// 			);
		// 		}
		// 	});
		// 	return true;
		// }),
	],
};
