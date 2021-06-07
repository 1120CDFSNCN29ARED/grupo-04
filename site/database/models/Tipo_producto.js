module.exports = function (sequelize, dataTypes) {
    const Tipo_producto = sequelize.define(
        "Tipo_producto",
        {
            nombre: {
                type: dataTypes.STRING,
                allowNull: false,
            },
        },
        { timestamps: false, tableName: "tipo_productos" }
    );
    Tipo_producto.associate = function (models) {
        Tipo_producto.hasMany(models.Producto, {
            as: "productos",
            foreignKey: "tipo_producto_id",
        });
    };
    return Tipo_producto;
};
