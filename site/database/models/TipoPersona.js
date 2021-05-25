module.exports = (sequelize, dataTypes) => {
  const TipoPersona = sequelize.define(
    "TipoPersona",
    { nombre: { type: dataTypes.STRING(20), allowNull: false } },
    { tablename: "tipos_personas", timestamps: false }
  );
  TipoPersona.associate = function (models) {
    TipoPersona.hasMany(models.User, {
      as: "usuarios",
      foreignKey: "tipo_persona_id",
    });
  };
  return TipoPersona;
};
