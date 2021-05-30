const path = require("path");
const fs = require("fs");
const Producto = require("../services/Products");

controller = {
    index: async (req, res) => {
        let productsH = await Producto.highlighted();
        //console.log(res.locals.userLogged.pedidos);
        res.render("./index", { productsH });
    },
    search: (req, res) => {
        res.render("./search", { searchProducts });
    },
};

module.exports = controller;
