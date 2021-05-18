const express = require('express');
const router = express.Router();
const upload = require('../middlewares/multer');
const usersController = require('../controllers/usersController');
const validations = require('../middlewares/validation');
const accessControls = require('../middlewares/accessControls');

router.get('/login', accessControls.loggedUser, usersController.login);
router.get('/logout', usersController.logout);
router.get('/admin/:id', accessControls.admin, usersController.admin);
router.post('/login/valid', usersController.validLogin);
router.get(
	'/register',
	accessControls.loggedUser,
	usersController.registerView
);
router.post('/register', validations.register, usersController.register);
router.get(
	'/profile/:id',
	accessControls.notLogged,
	usersController.userProfile
);
router.get(
	'/admin/userProfile/:id',
	accessControls.notLogged,
	usersController.adminUserProfile
);
router.get('/profile/:id/edit', usersController.editProfileView);
router.put(
	'/edit/:id',
	upload.user.single('image'),
	validations.editProfile,
	usersController.editProfile
);
router.get('/delete/:id', accessControls.admin, usersController.delete);
router.get('/listado', accessControls.admin, usersController.listado);
router.get(
	'/domicilios/:id',
	accessControls.notLogged,
	usersController.domiciliosView
);
router.put(
	'/domicilios/edit/:id',
	accessControls.notLogged,
	validations.editAddress,
	usersController.domiciliosEdit
);
router.get(
	'/domicilios/create/:id',
	accessControls.notLogged,
	usersController.domiciliosCreateView
);
router.post(
	'/domicilios/create/:id',
	validations.editAddress,
	usersController.createAddress
);
router.delete('/domicilios/delete/:id', usersController.deleteDom);

module.exports = router;
