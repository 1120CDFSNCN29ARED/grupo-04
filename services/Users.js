const db = require('../database/models');
const sequelize = db.sequelize;
const bcrypt = require('bcryptjs');

const User = {
	db: async function () {
		let all = await db.User.findAll();
		return all;
	},
	validLogin: async function (user) {
		let userToLogin = await User.findByEmail(user.email);
		console.log('Este es USER TO LOGIN: ' + userToLogin);
		userToLogin = userToLogin.dataValues;
		if (userToLogin) {
			if (bcrypt.compareSync(user.password, userToLogin.pass)) {
				delete userToLogin.password;
				return {
					message: '',
					validator: 0,
					loginResult: true,
					userToLogin,
				};
			} else {
				return {
					message: 'La contraseña no es correcta',
					validator: 1,
					loginResult: false,
				};
			}
		} else {
			return {
				message: 'Revisa el email ingresado',
				validator: 1,
				loginResult: false,
			};
		}
	},
	findByID: async function (id) {
		let userFound = await db.User.findByPk(id);
		return userFound;
	},
	findByEmail: async function (mail) {
		let userFound = await db.User.findOne({
			logging: false,
			where: { email: mail },
			include: [
				{
					association: 'domicilio',
					include: [
						{ association: 'paises' },
						{ association: 'provincias' },
					],
				},
			],
		});
		return userFound;
	},
	create: async function (user) {
		let newUser = await db.User.create({
			name: user.nombre,
			last_name: user.last_name,
			telefono: user.telefono,
			email: user.email,
			pass: user.password,
			image: user.image,
		});
		return newUser;
	},
	update: async function (user) {
		let userUpdated = await db.User.update(
			{
				name: user.name,
				last_name: user.last_name,
				telefono: user.telefono,
				email: user.email,
				pass: user.password,
				image: user.image,
				medio_pago: user.medio_pago,
			},
			{ where: { id: user.id } }
		);
		return userUpdated;
	},
	delete: function (userId) {
		db.User.destroy({
			where: { id: userId },
		});
	},
};
module.exports = User;
