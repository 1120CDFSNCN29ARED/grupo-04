module.exports = function (sequelize, dataTypes) {
	const Socket = sequelize.define('Socket', {
		nombre: {
			type: dataTypes.STRING,
			allowNull: false,
		},
	});
	Socket.associate = function (models) {
		Socket.hasMany(models.Especificaciones, {
			as: 'Especificaciones',
			foreignKey: 'socket_id',
		});
	};
	return Socket;
};
