module.exports = function (sequelize, dataTypes) {
  const Compra = sequelize.define("Compra", {
    user_id: { type: dataTypes.INTEGER(11), allowNull: false },
    carrito_id: { type: dataTypes.INTEGER(11), allowNull: false },
    precio_historico: { type: dataTypes.INTEGER(11), allowNull: false },
    fecha: { type: dataTypes.DATE, allowNull: false },
  });
  Compra.associate = function (models) {
    Compra.belongsTo(models.User, {
      as: "usuario",
      foreignKey: "user_id",
    });
    Compra.belongsTo(models.Carrito, {
      as: "carrito",
      foreignKey: "carrito_id",
    });
  };
  return Compra;
};
