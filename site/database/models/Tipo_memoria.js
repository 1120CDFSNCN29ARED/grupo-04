module.exports = function (sequelize, dataTypes) {
	const Tipo_memoria = sequelize.define('Tipo_memoria', {
		nombre: {
			type: dataTypes.STRING,
			allowNull: false,
		},
	});
	Tipo_memoria.associate = function (models) {
		Tipo_memoria.hasMany(models.Especificaciones, {
			as: 'Especificaciones',
			foreignKey: 'tipo_memoria_id',
		});
	};
	return Tipo_memoria;
};
