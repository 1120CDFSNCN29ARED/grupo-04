module.exports = function (sequelize, dataTypes) {
	const Especificaciones = sequelize.define('Especificaciones', {
		producto_id: {
			type: dataTypes.INTEGER(10).UNSIGNED,
			allowNull: false,
		},
		socket_id: {
			type: dataTypes.INTEGER(10).UNSIGNED,
			allowNull: true,
		},
		tipo_memoria_id: {
			type: dataTypes.INTEGER(10).UNSIGNED,
			allowNull: true,
		},
		sata_version: {
			type: dataTypes.INTEGER(5).UNSIGNED,
			allowNull: true,
		},
		usb_2: {
			type: dataTypes.INTEGER(5).UNSIGNED,
			allowNull: true,
		},
		usb_3: {
			type: dataTypes.INTEGER(5).UNSIGNED,
			allowNull: true,
		},
		vga: {
			type: dataTypes.INTEGER(2).UNSIGNED,
			allowNull: true,
		},
		hdmi: {
			type: dataTypes.INTEGER(2).UNSIGNED,
			allowNull: true,
		},
		dvi: {
			type: dataTypes.INTEGER(2).UNSIGNED,
			allowNull: true,
		},
		tamaño: {
			type: dataTypes.STRING(10),
			allowNull: true,
		},
		mhz: {
			type: dataTypes.DOUBLE.UNSIGNED,
			allowNull: true,
		},
		bits: {
			type: dataTypes.INTEGER(5).UNSIGNED,
			allowNull: true,
		},
		tamaño_fisico: {
			type: dataTypes.STRING,
			allowNull: true,
		},
		adicionales: {
			type: dataTypes.STRING(500),
			allowNull: true,
		},
	});
	Especificaciones.associate = function (models) {
		Especificaciones.belongsTo(models.Producto, {
			as: 'producto',
			foreignKey: 'producto_id',
		});
		Especificaciones.belongsTo(models.Socket, {
			as: 'socket',
			foreignKey: 'socket_id',
		});
		Especificaciones.belongsTo(models.Tipo_memoria, {
			as: 'tipo_memoria',
			foreignKey: 'tipo_memoria_id',
		});
	};
	return Especificaciones;
};
