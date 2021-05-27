const fs = require("fs");
const path = require("path");
const { validationResult } = require("express-validator");
const db = require("../database/models");
const sequelize = db.sequelize;
const Producto = require("../services/Products");

controller = {
  products: async (req, res) => {
    const products = await Producto.allProducts();
    res.render("./products/products", { products });
  },
  detail: async (req, res) => {
    let productSearch = await Producto.oneProduct(req.params.id);
    let product = productSearch.dataValues;
    //console.log(product.tipo_producto.nombre);
    res.render("./products/productDetail", { product });
  },
  cart: (req, res) => {
    if (req.session && req.session.cart) {
      let cart = req.session.cart;
      const account = {
        total: function () {
          let total = 0;
          cart.forEach((product) => {
            total = total + product.price * product.amount;
          });
          return total;
        },
        subtotal: () => this.total() - this.total() * 0.21,
        impuestos: () => this.total() * 0.21,
      };
      res.render("./products/productCart", { cart, account });
    }
    res.render("./products/productCart", { cart: null, account: null });
  },
  cartAdd: (req, res) => {
    let productsJSON = fs.readFileSync(dataJSON, { encoding: "utf-8" });
    let products = JSON.parse(productsJSON);
    if (req.session.cart) {
      let product = products.find((prod) => prod.id == req.params.id);
      req.session.cart.push({
        id: product.id,
        name: product.name,
        description: product.specs.join(", "),
        image: product.img[0],
        price: product.price,
        amount: req.body.productAmount,
      });
    } else {
      req.session.cart = [];
      let product = products.find((prod) => prod.id == req.params.id);
      req.session.cart.push({
        id: product.id,
        name: product.name,
        description: product.specs.join(", "),
        image: product.img[0],
        price: product.price,
        amount: req.body.productAmount,
      });
    }
    return res.redirect(`/products/detail/${req.params.id}`);
  },
  cartDelete: (req, res) => {},
  createView: async (req, res) => {
    let categories = await Producto.datosCreate("Tipo_producto");
    let iva = await Producto.datosCreate("Iva");
    let marcas = await Producto.datosCreate("Marca");
    let uni_medida = await Producto.datosCreate("Uni_medida");

    res.render("./products/productCreate", {
      categories,
      uni_medida,
      marcas,
      iva,
    });
  },
  create: async (req, res) => {
    console.log("Pase por create");
    let validationErrors = validationResult(req);
    let categories = await Producto.datosCreate("Tipo_producto");
    let iva = await Producto.datosCreate("Iva");
    let marcas = await Producto.datosCreate("Marca");
    let uni_medida = await Producto.datosCreate("Uni_medida");
    if (validationErrors.isEmpty()) {
      let imagenes = [];
      req.files.forEach((element) => {
        imagenes.push({ imagen: element.filename });
      });
      let spec = [];
      if (req.body.productTopSpec1)
        spec.push({ caracteristica: req.body.productTopSpec1 });
      if (req.body.productTopSpec2)
        spec.push({ caracteristica: req.body.productTopSpec2 });
      if (req.body.productTopSpec3)
        spec.push({ caracteristica: req.body.productTopSpec3 });
      if (req.body.productTopSpec4)
        spec.push({ caracteristica: req.body.productTopSpec4 });

      //let spec = { caracteristica: req.body.productTopSpec1 };
      let producto = {
        nombre: req.body.productName,
        tipo_producto_id: req.body.productCategory,
        marca_id: req.body.marca,
        descripcion: req.body.productDescription,
        descuento_oferta: req.body.highlighted ? true : false,
        codigo: req.body.productCode,
        precio: req.body.productPrice,
        uni_medida_id: req.body.uniMedida,
        iva_id: req.body.iva,
        cantidad_real: req.body.cantidadInicial,
        createdAt: new Date(),
      };
      let newProduct = await Producto.create(producto, imagenes, spec);
      //console.log(newProduct);
      return res.redirect(`/products/detail/${newProduct.id}`);
    }
    return res.render("./products/productCreate", {
      errors: validationErrors.mapped(),
      oldData: req.body,
      categories,
      marcas,
      uni_medida,
      iva,
    });
  },
  list: async (req, res) => {
    let productsL = await Producto.list(req.query.page, req.query.sort);
    // productsL.forEach((elem) => console.log(elem.id));
    res.render("./products/productsList", { productsL });
  },
  editPrice: (req, res) => {
    let products = JSON.parse(fs.readFileSync(dataJSON, "utf-8"));
    let product = products.find((product) => product.id == req.params.id);
    products.forEach((productEach) => {
      if (productEach.id == product.id) {
        productEach.price = req.body.price ? req.body.price : "";
      }
    });
    fs.writeFileSync(dataJSON, JSON.stringify(products, null, 4));
    return res.redirect("/products/listado");
  },
  editHighlighted: async (req, res) => {
    if (req.body.highlighted) {
      await db.Producto.update(
        { descuento_oferta: 1 },
        { where: { id: req.params.id } }
      );
    } else {
      await db.Producto.update(
        { descuento_oferta: 0 },
        { where: { id: req.params.id } }
      );
    }
    return res.redirect("/products/listado");
  },
  editView: async (req, res) => {
    let categories = await Producto.datosCreate("Tipo_producto");
    let iva = await Producto.datosCreate("Iva");
    let marcas = await Producto.datosCreate("Marca");
    let uni_medida = await Producto.datosCreate("Uni_medida");
    let product = await Producto.oneProduct(req.params.id);
    res.render("./products/productEdit", {
      product,
      categories,
      iva,
      marcas,
      uni_medida,
    });
  },
  edit: async (req, res) => {
    let categories = await Producto.datosCreate("Tipo_producto");
    let iva = await Producto.datosCreate("Iva");
    let marcas = await Producto.datosCreate("Marca");
    let uni_medida = await Producto.datosCreate("Uni_medida");
    let validationErrors = validationResult(req);
    if (validationErrors.isEmpty()) {
      let imagenes = [];
      req.files.forEach((element) => {
        imagenes.push({ imagen: element.filename });
      });
      let spec = [];
      if (req.body.productTopSpec1)
        spec.push({ caracteristica: req.body.productTopSpec1 });
      if (req.body.productTopSpec2)
        spec.push({ caracteristica: req.body.productTopSpec2 });
      if (req.body.productTopSpec3)
        spec.push({ caracteristica: req.body.productTopSpec3 });
      if (req.body.productTopSpec4)
        spec.push({ caracteristica: req.body.productTopSpec4 });
      let producto = {
        id: req.params.id,
        nombre: req.body.productName,
        tipo_producto_id: req.body.productCategory,
        marca_id: req.body.marca,
        descripcion: req.body.productDescription,
        descuento_oferta: req.body.highlighted ? true : false,
        codigo: req.body.productCode,
        precio: req.body.productPrice,
        uni_medida_id: req.body.uniMedida,
        iva_id: req.body.iva,
        cantidad_real: req.body.cantidadInicial,
      };
      //console.log(req.params.id);
      await Producto.update(producto, imagenes, spec);
      return res.redirect(`/products/detail/${producto.id}`);
    }

    return res.render("./products/productEdit", {
      errors: validationErrors.mapped(),
      product,
      categories,
      iva,
      marcas,
      uni_medida,
    });
  },
  delete: async (req, res) => {
    await Producto.delete(req.params.id);
    return res.redirect("/products");
  },
  search: async (req, res) => {
    let productsL = await Producto.search(req.query.busqueda);
    //console.log(products);
    res.render("./products/productsList", { productsL });
  },
};
module.exports = controller;
