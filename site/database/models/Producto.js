module.exports = (sequelize, dataTypes) => {
    const Producto = sequelize.define(
        "Producto",
        {
            nombre: {
                type: dataTypes.STRING,
                allowNull: false,
            },
            tipo_producto_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
            marca_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
            descripcion: {
                type: dataTypes.STRING(500),
                allowNull: false,
            },
            descuento_oferta: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: true,
            },
            codigo: {
                type: dataTypes.STRING(50),
                allowNull: false,
            },
            precio: {
                type: dataTypes.DECIMAL(7, 2),
                allowNull: false,
            },
            uni_medida_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
            iva_id: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: false,
            },
            cantidad_real: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allowNull: true,
            },
            cantidad_en_pedido: {
                type: dataTypes.INTEGER(10).UNSIGNED,
                allownul: true,
            },
        },
        {
            timestamps: true,
            paranoid: true,
        }
    );
    Producto.associate = function (models) {
        Producto.belongsTo(models.Iva, {
            as: "iva",
            foreignKey: "iva_id",
        });
        Producto.belongsTo(models.Uni_medida, {
            as: "uni_medida",
            foreignKey: "uni_medida_id",
        });
        Producto.belongsTo(models.Marca, {
            as: "marca",
            foreignKey: "marca_id",
        });
        Producto.belongsTo(models.Tipo_producto, {
            as: "tipo_producto",
            foreignKey: "tipo_producto_id",
        });
        Producto.hasMany(models.Especificaciones, {
            as: "especificaciones",
            foreignKey: "producto_id",
        });
        Producto.hasMany(models.Caracteristicas, {
            as: "caracteristicas",
            foreignKey: "producto_id",
        });
        Producto.hasMany(models.Imagenes, {
            as: "imagenes",
            foreignKey: "producto_id",
        });
        // Producto.hasMany(models.Series, {
        //   as: "series",
        //   foreignKey: "producto_id",
        // });
        Producto.hasMany(models.Pedido, {
            as: "pedidos",
            foreignKey: "producto_id",
        });
    };
    return Producto;
};
