const path = require('path');
const { validationResult } = require('express-validator');
const User = require('../services/Users');
const Domicilio = require('../services/Domicilio');
const bcrypt = require('bcryptjs');
const db = require('../database/models');
const e = require('express');

controller = {
	login: (req, res) => {
		let validator = 0;
		res.render('./users/login', { validator });
	},
	logout: (req, res) => {
		req.session.destroy();
		res.clearCookie('userLoggedEmail');
		res.redirect('/');
	},
	admin: (req, res) => {
		const user = req.session.userLogged;
		res.render('./users/admin', { user });
	},
	validLogin: async (req, res) => {
		let result = await User.validLogin(req.body);
		if (result.loginResult) {
			req.session.userLogged = result.userToLogin;
			console.log('Login: ' + req.session.userLogged);
			if (req.body.recuerda) {
				res.cookie('userLoggedEmail', req.body.email, {
					maxAge: 1000 * 3600 * 24 * 3650,
				});
			}
			res.redirect('/users/profile/' + result.userToLogin.id);
		} else {
			res.render('./users/login', {
				message: result.message,
				validator: result.validator,
			});
		}
	},
	registerView: (req, res) => {
		let validator = 0;
		res.render('./users/register', { validator });
	},
	register: async (req, res) => {
		let validationErrors = validationResult(req);
		if (validationErrors.isEmpty()) {
			const userInDB = await User.findByEmail(req.body.email);
			let message = '';
			let validator = 0;
			if (userInDB) {
				message = 'El email ya está registrado, elige otro';
				validator = 1;
				res.render('./users/register', {
					message,
					validator,
					old_data: req.body,
				});
			} else {
				if (req.body.password == req.body.confirmPass) {
					const userToCreate = {
						nombre: req.body.nombre,
						last_name: req.body.apellido,
						email: req.body.email,
						password: bcrypt.hashSync(req.body.password, 10),
						telefono: Number(req.body.telefono),
						image: 'user.png',
					};
					let newUser = await User.create(userToCreate);
					newUser = newUser.dataValues;
					let userToLogin = { ...newUser };
					delete userToLogin.password;
					req.session.userLogged = userToLogin;
					if (req.body.recuerda) {
						res.cookie('userLoggedEmail', userToCreate.email, {
							maxAge: 1000 * 3600 * 24 * 3650,
						});
					}
					const userLogged = await User.findByEmail(
						userToCreate.email
					);
					res.redirect('/users/profile/' + userLogged.id);
				} else {
					message = 'Las contraseñas no coinciden';
					validator = 1;
					res.render('./users/register', {
						message,
						validator,
						old_data: req.body,
					});
				}
			}
		} else {
			message = 'Han habido errores al completar el formulario';
			validator = 1;
			res.render('./users/register', {
				message,
				validator,
				errors: validationErrors.mapped(),
				old_data: req.body,
			});
		}
	},
	userProfile: async (req, res) => {
		console.log(`usuario en sesion: ${req.session.userLogged.id}`);
		const user = req.session.userLogged;
		let domicilio = await db.Domicilio.findAll({
			include: [{ association: 'paises' }, { association: 'provincias' }],
			where: { user_id: user.id },
		});
		//res.send([user, domicilio]);
		res.render('./users/profile', { user, domicilio });
	},
	adminUserProfile: (req, res) => {
		let users = User.db();
		const user = users.find((user) => user.id == req.params.id);
		res.render('./users/userProfile', { user });
	},
	editProfileView: (req, res) => {
		let validator = 0;
		console.log(`usuario en sesion: ${req.session.userLogged.id}`);
		const user = req.session.userLogged;
		res.render('./users/editProfile', { user, validator });
	},
	editProfile: async (req, res) => {
		let validationErrors = validationResult(req);
		let user = await User.findByID(req.params.id);
		let message = '';
		let validator = 0;
		if (validationErrors.isEmpty()) {
			if (req.body.password) {
				if (req.body.password == req.body.confirmPass) {
					user.password = bcrypt.hashSync(req.body.password, 10);
				} else {
					message = 'Las contraseñas no coinciden';
					validator = 1;
					res.render('./users/editProfile', {
						user,
						message,
						validator,
					});
				}
			}
			if (req.body.medio_pago) {
				user.medio_pago = req.body.medio_pago;
			}
			if (req.body.domicilio) {
				user.domicilio = req.body.domicilio;
			}
			if (req.body.nombre) {
				user.name = req.body.nombre;
			}
			if (req.body.apellido) {
				user.last_name = req.body.apellido;
			}
			if (req.body.telefono) {
				user.telefono = req.body.telefono;
			}
			if (req.file) {
				user.image = req.file.filename;
			}
			await User.update(user);
			req.session.userLogged = user;
			res.redirect('/users/profile/' + user.id);
		} else {
			message = 'Han habido errores al completar el formulario';
			validator = 1;
			res.render('./users/editProfile', {
				message,
				user,
				validator,
				errors: validationErrors.mapped(),
				old_data: req.body,
			});
		}
	},
	domiciliosView: async (req, res) => {
		let validator = 0;
		console.log(`usuario en sesion: ${req.session.userLogged.id}`);
		const user = req.session.userLogged;
		const params = req.params.id;
		const address = await db.Domicilio.findOne({
			include: ['provincias', 'paises'],
			where: { id: params },
		});
		const paises = await db.Pais.findAll();
		const provincias = await db.Provincia.findAll();
		res.render('./users/editDomicilio', {
			user,
			validator,
			paises,
			provincias,
			address,
		});
	},
	domiciliosCreateView: async (req, res) => {
		let validator = 0;
		const user = req.session.userLogged;
		const paises = await db.Pais.findAll();
		const provincias = await db.Provincia.findAll();
		res.render('./users/createDom', {
			user,
			validator,
			paises,
			provincias,
		});
	},
	createAddress: async (req, res) => {
		let validationErrors = validationResult(req);
		let domEnvio = 0;
		if (validationErrors.isEmpty()) {
			if (req.body.envio) {
				domEnvio = 1;
			}
			const address = {
				user_id: req.params.id,
				calle: req.body.calle,
				cp: req.body.cp,
				pais: req.body.pais,
				provincia: req.body.provincia,
				localidad: req.body.localidad,
				envio: domEnvio,
			};
			const newAddress = await Domicilio.create(address);
			res.redirect('/users/profile/' + address.user_id);
		} else {
			validator = 1;
			message = 'Han habido errores al completar el formulario';
			const user = req.session.userLogged;
			const paises = await db.Pais.findAll();
			const provincias = await db.Provincia.findAll();
			const old_data = req.body;
			old_data.pais = parseInt(req.body.pais);
			old_data.provincia = parseInt(req.body.provincia);
			res.render('./users/createDom', {
				message,
				user,
				paises,
				provincias,
				validator,
				errors: validationErrors.mapped(),
				old_data,
			});
		}
	},
	domiciliosEdit: async (req, res) => {
		let validationErrors = validationResult(req);
		let domicilio = await Domicilio.findByID(req.params.id);
		let message = '';
		let validator = 0;
		domicilio.envio = 0;
		if (validationErrors.isEmpty()) {
			if (req.body.calle) {
				domicilio.calle = req.body.calle;
			}
			if (req.body.cp) {
				domicilio.cp = req.body.cp;
			}
			if (req.body.pais) {
				domicilio.pais = req.body.pais;
			}
			if (req.body.provincia) {
				domicilio.provincia = req.body.provincia;
			}
			if (req.body.localidad) {
				domicilio.localidad = req.body.localidad;
			}
			if (req.body.envio) {
				domicilio.envio = 1;
			}
			await Domicilio.updateDomicilio(domicilio);
			res.redirect('/users/profile/' + domicilio.user_id);
		} else {
			message = 'Han habido errores al completar el formulario';
			validator = 1;
			const address = domicilio;
			const user = req.session.userLogged;
			const paises = await db.Pais.findAll();
			const provincias = await db.Provincia.findAll();
			const old_data = req.body;
			old_data.pais = parseInt(req.body.pais);
			old_data.provincia = parseInt(req.body.provincia);
			//res.send(old_data);
			res.render('./users/editDomicilio', {
				message,
				user,
				paises,
				provincias,
				address,
				validator,
				errors: validationErrors.mapped(),
				old_data,
			});
		}
	},
	deleteDom: async (req, res) => {
		let domicilio = await Domicilio.findByID(req.params.id);
		await Domicilio.delete(req.params.id);
		res.redirect('/users/profile/' + domicilio.user_id);
	},
	delete: (req, res) => {
		User.delete(req.params.id);
		res.redirect('/users/listado');
	},
	listado: async (req, res) => {
		const users = await User.db();
		res.render('./users/listado', { users });
	},
};
module.exports = controller;
