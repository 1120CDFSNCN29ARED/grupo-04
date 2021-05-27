module.exports = function (sequelize, dataTypes) {
    const Imagenes = sequelize.define(
        "Imagenes",
        {
            imagen: {
                type: dataTypes.STRING,
                allowNull: false,
            },
            producto_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
        },
        {
            tableName: "imagenes",
            timestamps: true,
            paranoid: true,
        }
    );
    Imagenes.associate = function (models) {
        Imagenes.belongsTo(models.Producto, {
            as: "producto",
            foreignKey: "producto_id",
        });
    };
    return Imagenes;
};
