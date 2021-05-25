module.exports = function (sequelize, dataTypes) {
	const Marca = sequelize.define(
		'Marca',
		{
			nombre: {
				type: dataTypes.STRING,
				allowNull: false,
			},
		},
		{ timestamps: false }
	);
	Marca.associate = function (models) {
		Marca.hasMany(models.Producto, {
			as: 'productos',
			foreignKey: 'marca_id',
		});
	};
	return Marca;
};
