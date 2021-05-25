module.exports = function (sequelize, dataTypes) {
	const Iva = sequelize.define(
		'Iva',
		{
			nombre: {
				type: dataTypes.STRING,
				allowNull: false,
			},
			valor: {
				type: dataTypes.DOUBLE,
				allowNull: false,
			},
		},
		{ timestamps: false }
	);
	Iva.associate = function (models) {
		Iva.hasMany(models.Producto, {
			as: 'productos',
			foreignKey: 'iva_id',
		});
	};
	return Iva;
};
