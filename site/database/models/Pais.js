module.exports = (sequelize, dataTypes) => {
	const Pais = sequelize.define(
		'Pais',
		{
			nombre: { type: dataTypes.STRING(20), allowNull: false },
		},
		{ timestamps: false, tableName: 'paises' }
	);
	Pais.associate = function (models) {
		Pais.hasMany(models.Domicilio, {
			as: 'domicilios',
			foreignKey: 'pais_id',
		});
	};
	return Pais;
};
