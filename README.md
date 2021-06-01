INDICE

I - INSTRUCCIONES PARA CORRER LA APP
II - FEATURES Y FUNCIONALIDADES
III - TECNOLOGIAS UTILIZADAS

I - INSTRUCCIONES PARA CORRER LA APP

1- CREAR ESTRUCTURA DE BASE DE DATOS

    Primero se deberá ejecutar el script "structure.sql" en un gestor de base de datos para generar la estructura de la base de datos con todas sus tablas.

2- POBLAR LA BASE DE DATOS

    En segundo lugar, se deberá ejecutar el script "populate.sql" en un gestor de base de datos para poblar las tablas y poder utilizar las funcionalidades de la app.

3- INSTALAR DEPENDENCIAS

    Tanto en la carpeta SITE como en la carpeta DASHBOARD, deberá ejecutarse el comando "npm install" en la consola para instalar las dependencias necesarias.

4- CORRER LA APP

    Luego, para lanzar la applicación, con la base de datos conectada, deberá correrse dentro de la carpeta "site" el comando: npm start.

5- USAR EL DASHBOARD

    Finalmente, con el "site" corriendo y las base de datos conectada, para utilizar el Dashboard, dentro de la carpeta "dashboard" deberá correrse el comando: npm start.

6- USUARIO ADMINISTRADOR

    Para poder acceder al Panel de Administración y poder así eliminar usuarios, crear y eliminar productos, deberá loguearse con los siguientes datos:

    email: admin@admin.com
    contraseña: 12345678

II - FEATURES Y FUNCIONALIDADES

    La app de ecommerce construida cuenta con las siguientes funcionalidades y features:

1- USUARIOS: sistema de registro y modificación de usuarios completo. Permiso de administrador para el mantenimiento de usuarios y productos. Sistema de login completo con control de rutas por medio de middlewares. Utilización de "session" para el mantenimiendo del usuario logueado y de "cookies" para mantener la sesión abierta (a opción del usuario). Hasheo de contraseña.
Creación y modificación del perfil, incluyendo una fotografía de perfil, alta, baja y modificación de domicilios, permitiendo agregar más de un domicilio y seleccionar el domicilio preferido de envío.
Validación en Front End y Back End para los formularios, verificando si el email existe en base de datos, contraseña de 8 caracteres mínimos y campo de verificación de contraseña.

2- PRODUCTOS: sistema de registro y modificación de productos completo. Permiso de administrador para consultar el listado completo de productos, agregar, eliminar y editar los productos. Carrito de compras asociado a usuarios con la posibilidad de administrar varios pedidos simultaneamente.
Validación en Front End y Back End de los formularios de creación y edición de productos.

3- ADMINISTRADOR: establecimiendo de permisos de administrador para acceder a vistas y paneles de administración reservados para el perfil autorizado.

4- DASHBOARD: Panel de estadísticas y consultas centralizadas del ecommerce. Cantidad de usuarios, cantidad de productos, cantidad de categorías, listado de usuarios, detalle individual de cada usuario, listado de productos, detalle individual de cada producto, último usuario creado, último producto creado.

III - TECNOLOGIAS UTILIZADAS

    Para la realización de la app de ecommerce se emplearon las siguientes teconologías:

1- NodeJS
2- Express
3- Express-validator
4- Multer
5- EJS
6- MySQL
7- Sequelize
8- JavaScript
9- HTML5
10- CSS3
11- REACT (Hooks)
12- React Router Dom
