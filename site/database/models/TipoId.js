module.exports = (sequelize, dataTypes) => {
  const TipoId = sequelize.define(
    "TipoId",
    { nombre: { type: dataTypes.STRING(20), allowNull: false } },
    { tablename: "tipos_documento", timestamps: false }
  );
  TipoId.associate = function (models) {
    TipoId.hasMany(models.User, {
      as: "usuarios",
      foreignKey: "tipo_documento_id",
    });
  };
  return TipoId;
};
