const { check } = require("express-validator");
const path = require("path");

module.exports = {
  register: [
    check("nombre")
      .notEmpty()
      .withMessage("Debes completar el nombre")
      .bail()
      .isLength({ min: 2 })
      .withMessage("El nombre debe tener al menos 2 caracteres"),
    check("apellido")
      .notEmpty()
      .withMessage("Debes completar el apellido")
      .bail()
      .isLength({ min: 2 })
      .withMessage("El nombre debe tener al menos 2 caracteres"),
    check("email")
      .notEmpty()
      .withMessage("Debes completar un email")
      .bail()
      .isEmail()
      .withMessage("Debes ingresar un formato de email válido"),
    check("telefono").isInt().withMessage("Solo puedes ingresar números"),
    check("password")
      .notEmpty()
      .withMessage("Debes ingresar una contraseña")
      .bail()
      .isLength({ min: 8 })
      .withMessage("La contraseña debe tener al menos 8 caracteres"),
  ],
  editProfile: [
    check("nombre").notEmpty().withMessage("Debes completar el nombre"),
    check("apellido").notEmpty().withMessage("Debes completar el apellido"),
    check("telefono").isInt().withMessage("Solo puedes ingresar números"),
    check("password")
      .custom((value, { req }) => {
        console.log(value);
        if (value.length > 0) {
          if (value.length < 8) {
            return false;
          }
        } else {
          return true;
        }
      })
      .withMessage("La contraseña debe tener al menos 8 caracteres"),
    check("image")
      .custom((value, { req }) => {
        if (req.file) {
          console.log(req.file);
          let ext = path.extname(req.file.originalname).toLocaleLowerCase();
          switch (ext) {
            case ".jpg":
            case ".jpeg":
            case ".png":
            case ".gif":
              return true;
            default:
              return false;
          }
        } else {
          return true;
        }
      })
      .withMessage(
        "Solo puedes subir imagenes con extension JPG, JPEG, PNG o GIF"
      ),
  ],
  editAddress: [
    check("calle").notEmpty().withMessage("Debes completar el domicilio"),
    check("cp").notEmpty().withMessage("Debes completar el código postal"),
    check("pais").notEmpty().withMessage("Debes seleccionar un país"),
    check("provincia")
      .notEmpty()
      .withMessage("Debes seleccionar una provincia"),
    check("localidad")
      .notEmpty()
      .withMessage("Debes seleccionar una localidad"),
  ],
};
