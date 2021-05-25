module.exports = (sequelize, dataTypes) => {
  let alias = "User";
  let cols = {
    name: { type: dataTypes.STRING(50), allowNull: true },
    last_name: { type: dataTypes.STRING(50), allowNull: true },
    documento: { type: dataTypes.INTEGER(11), allowNull: true },
    tipo_documento_id: { type: dataTypes.INTEGER(11), allowNull: true },
    email: { type: dataTypes.STRING(50), allowNull: true },
    pass: { type: dataTypes.STRING(250), allowNull: true },
    condicion_fiscal_id: { type: dataTypes.INTEGER(11), allowNull: true },
    razon_social: { type: dataTypes.STRING(50), allowNull: true },
    telefono: { type: dataTypes.INTEGER(11) },
    ofertas: dataTypes.INTEGER(11),
    tipo_persona_id: { type: dataTypes.INTEGER(11), allowNull: true },
    mail_confirmado: { type: dataTypes.INTEGER(11) },
    image: { type: dataTypes.STRING },
    admin: { type: dataTypes.BOOLEAN },
    medio_pago: { type: dataTypes.STRING },
  };
  let config = { timestamps: true };
  const User = sequelize.define(alias, cols, config);
  User.associate = function (models) {
    User.belongsTo(models.TipoId, {
      as: "identificacion",
      foreignKey: "tipo_documento_id",
    });
    User.belongsTo(models.TipoPersona, {
      as: "tipo_persona",
      foreignKey: "tipo_persona_id",
    });
    User.belongsTo(models.CondicionFiscal, {
      as: "cond_fiscal",
      foreignKey: "condicion_fiscal_id",
    });
    User.hasMany(models.Domicilio, {
      as: "domicilio",
      foreignKey: "user_id",
    });
    User.hasMany(models.Compra, {
      as: "compras",
      foreignKey: "user_id",
    });
  };
  return User;
};
