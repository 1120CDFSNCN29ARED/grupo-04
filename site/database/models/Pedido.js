module.exports = function (sequelize, dataTypes) {
  const Pedido = sequelize.define("Pedido", {
    producto_id: { type: dataTypes.INTEGER(11), allowNull: false },
    cantidad: { type: dataTypes.INTEGER(11), allowNull: false },
  });
  Pedido.associate = function (models) {
    Pedido.belongsTo(models.Carrito, {
      as: "carrito",
      foreignKey: "pedido_id",
    });
    Pedido.belongsTo(models.Producto, {
      as: "producto",
      foreignKey: "producto_id",
    });
  };
  return Pedido;
};
