module.exports = function (sequelize, dataTypes) {
    const Pedido = sequelize.define(
        "Pedido",
        {
            producto_id: { type: dataTypes.INTEGER(11), allowNull: false },
            cantidad: { type: dataTypes.INTEGER(11), allowNull: false },
            user_id: { type: dataTypes.INTEGER(11), allowNull: false },
            compra_id: { type: dataTypes.INTEGER(11), allowNull: true },
            precio_compra: { type: dataTypes.INTEGER(11), allowNull: true },
        },
        {
            timestamps: true,
            paranoid: true,
        }
    );
    Pedido.associate = function (models) {
        Pedido.belongsTo(models.Compra, {
            as: "compra",
            foreignKey: "pedido_id",
        });
        Pedido.belongsTo(models.Producto, {
            as: "producto",
            foreignKey: "producto_id",
        });
        Pedido.belongsTo(models.User, {
            as: "user",
            foreignKey: "user_id",
        });
    };
    return Pedido;
};
