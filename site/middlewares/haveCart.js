const Products = require("../services/Products");

module.exports = async function (req, res, next) {
    if (req.session.userLogged) {
        let pedidos = await Products.cartView(req.session.userLogged.id);
        if (pedidos.length > 0) {
            locals.userLogged.pedidos = true;
        } else {
            locals.userLogged.pedidos = false;
        }
    }
    next();
};
