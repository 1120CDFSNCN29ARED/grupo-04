const Users = require("../services/Users");

module.exports = async function (req, res, next) {
  res.locals.isLogged = false;
  if (req.cookies.userLoggedEmail) {
    let userInCookies = await Users.findByEmail(req.cookies.userLoggedEmail);
    req.session.userLogged = userInCookies;
  }
  if (req.session.userLogged) {
    res.locals.isLogged = true;
    res.locals.userLogged = req.session.userLogged;
  }
  next();
};
