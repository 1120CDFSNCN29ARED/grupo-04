module.exports = function (sequelize, dataTypes) {
    const Caracteristicas = sequelize.define(
        "Caracteristicas",
        {
            caracteristica: {
                type: dataTypes.STRING,
                allowNull: false,
            },
            producto_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
        },
        {
            tableName: "caracteristicas",
            timestamps: true,
            paranoid: true,
        }
    );
    Caracteristicas.associate = function (models) {
        Caracteristicas.belongsTo(models.Producto, {
            as: "producto",
            foreignKey: "producto_id",
        });
    };
    return Caracteristicas;
};
