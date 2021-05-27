module.exports = function (sequelize, dataTypes) {
    const Compra = sequelize.define(
        "Compra",
        {
            user_id: { type: dataTypes.INTEGER(11), allowNull: false },
            fecha: { type: dataTypes.DATE, allowNull: false },
        },
        {
            timestamps: true,
            paranoid: true,
        }
    );
    Compra.associate = function (models) {
        Compra.belongsTo(models.User, {
            as: "usuario",
            foreignKey: "user_id",
        });
        Compra.hasMany(models.Pedido, {
            as: "pedido",
            foreignKey: "compra_id",
        });
    };
    return Compra;
};
