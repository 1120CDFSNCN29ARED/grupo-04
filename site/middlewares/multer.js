const multer = require('multer');
const path = require('path');

const upload = {
	user: multer({
		storage: multer.diskStorage({
			destination: (req, file, cb) => {
				cb(null, path.join(__dirname, '../public/img/users'));
			},
			filename: (req, file, cb) => {
				cb(
					null,
					`${Date.now()}_img_${path.extname(file.originalname)}`
				);
			},
		}),
	}),
	product: multer({
		storage: multer.diskStorage({
			destination: (req, file, cb) => {
				cb(null, path.join(__dirname, '../public/img/products'));
			},
			filename: (req, file, cb) => {
				cb(
					null,
					`${Date.now()}_img_${path.extname(file.originalname)}`
				);
			},
		}),
	}),
};

// const multerStorage = multer.diskStorage({
// 	destination: (req, file, cb) => {
// 		cb(null, path.join(__dirname, '../public/img/users'));
// 	},
// 	filename: (req, file, cb) => {
// 		cb(null, `${Date.now()}_img_${path.extname(file.originalname)}`);
// 	},
// });
// const upload = multer({ storage: multerStorage });

module.exports = upload;
