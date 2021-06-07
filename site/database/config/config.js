module.exports = {
    development: {
        username: "root",
        password: process.env.SQL_PASSWORD,
        database: "pc_components",
        loggin: false,
        host: "127.0.0.1",
        dialect: "mysql",
    },
    test: {
        username: "root",
        password: null,
        database: "database_test",
        host: "127.0.0.1",
        dialect: "mysql",
    },
    production: {
        username: process.env.SQL_USER,
        password: process.env.SQL_PASSWORD,
        database: process.env.SQL_DATABASE,
        host: process.env.SQL_HOST,
        dialect: "mysql",
    },
};
