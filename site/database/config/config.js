module.exports = {
  development: {
    username: "root",
    password: null,
    database: "pc_components",
    loggin: false,
    host: "127.0.0.1",
    dialect: "mysql",
  },
  test: {
    username: "root",
    password: "NewPassword",
    database: "database_test",
    host: "127.0.0.1",
    dialect: "mysql",
  },
  production: {
    username: "root",
    password: null,
    database: "database_production",
    host: "127.0.0.1",
    dialect: "mysql",
  },
};
