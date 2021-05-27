module.exports = function (sequelize, dataTypes) {
    const Domicilio = sequelize.define(
        "Domicilio",
        {
            user_id: { type: dataTypes.INTEGER(11), allowNull: false },
            calle: { type: dataTypes.STRING(150), allowNull: false },
            cp: { type: dataTypes.STRING(10), allowNull: false },
            localidad: { type: dataTypes.STRING(150), allowNull: false },
            provincia_id: { type: dataTypes.INTEGER(11), allowNull: false },
            pais_id: { type: dataTypes.INTEGER(11), allowNull: false },
            envio: { type: dataTypes.BOOLEAN },
        },
        {
            timestamps: true,
            paranoid: true,
        }
    );
    Domicilio.associate = function (models) {
        Domicilio.belongsTo(models.User, {
            as: "usuario",
            foreignKey: "user_id",
        });
        Domicilio.belongsTo(models.Provincia, {
            as: "provincias",
            foreignKey: "provincia_id",
        });
        Domicilio.belongsTo(models.Pais, {
            as: "paises",
            foreignKey: "pais_id",
        });
    };
    return Domicilio;
};
