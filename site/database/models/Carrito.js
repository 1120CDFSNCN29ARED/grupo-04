module.exports = function (sequelize, dataTypes) {
	const Carrito = sequelize.define('Carrito', {
		pedido_id: { type: dataTypes.INTEGER(11), allowNull: false },
		status: { type: dataTypes.INTEGER(11), allowNull: false },
	});
	Carrito.associate = function (models) {
		Carrito.hasMany(models.Pedido, {
			as: 'pedidos',
			foreignKey: 'pedido_id',
		});
		Carrito.belongsTo(models.Compra, {
			as: 'compra',
			foreignKey: 'carrito_id',
		});
	};
	return Carrito;
};
