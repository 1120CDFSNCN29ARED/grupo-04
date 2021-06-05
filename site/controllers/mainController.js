const Producto = require("../services/Products");

controller = {
  index: async (req, res) => {
    let productsH = await Producto.highlighted();
    //console.log(res.locals.userLogged.pedidos);
    res.render("./index", { productsH });
  },
};

module.exports = controller;
