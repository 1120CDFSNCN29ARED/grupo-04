DROP DATABASE IF EXISTS pc_components;
CREATE DATABASE IF NOT EXISTS pc_components;
USE pc_components;

CREATE TABLE tipos_personas(
id       int auto_increment not null,
nombre   varchar(20) not null,
CONSTRAINT pk_tipos_personas PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE tipos_documento(
id       int auto_increment not null,
nombre   varchar(20) not null,
CONSTRAINT pk_tipos_documento PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE condiciones_fiscales(
id       int auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_condiciones_fiscales PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE paises(
id              int auto_increment not null,
nombre          varchar(20) not null,
CONSTRAINT pk_paises PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE provincias(
id              int auto_increment not null,
pais_id     int not null,
nombre          varchar(50) not null,
CONSTRAINT pk_provincias PRIMARY KEY(id),
CONSTRAINT fk_pais FOREIGN KEY(pais_id) REFERENCES paises(id)
)ENGINE=InnoDB;

CREATE TABLE users(
id       int(10) auto_increment not null,
name   varchar(50) not null,
last_name    varchar(50) not null,
documento   int(11),
tipo_documento_id  int(11),
email    varchar(50) not null,
pass    varchar(255) not null,
condicion_fiscal_id int(11),
razon_social varchar(50),
telefono int(12),
ofertas int(11),
tipo_persona_id int(11),
mail_confirmado int(11),
image varchar(255),
admin boolean,
medio_pago varchar(255),
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_users PRIMARY KEY(id),
CONSTRAINT fk_tipo_documento FOREIGN KEY(tipo_documento_id) REFERENCES tipos_documento(id),
CONSTRAINT fk_condicion_fiscal FOREIGN KEY(condicion_fiscal_id) REFERENCES condiciones_fiscales(id),
CONSTRAINT fk_tipo_persona FOREIGN KEY(tipo_persona_id) REFERENCES tipos_personas(id)
)ENGINE=InnoDB;

CREATE TABLE domicilios
(
    id       int(10) auto_increment not null,
    user_id int(10) not null,
    calle   varchar(150) not null,
    cp  varchar(10) not null,
    localidad        varchar(150) not null,
    provincia_id     int(11)     not null,
    pais_id          int(11)     not null,
    envio        boolean,
    createdAt   date,
    updatedAt date,
    deletedAt date,
CONSTRAINT pk_domicilios PRIMARY KEY(id),
CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
CONSTRAINT fk_provincia FOREIGN KEY(provincia_id) REFERENCES provincias(id),
CONSTRAINT fk_pais_id FOREIGN KEY(pais_id) REFERENCES paises(id)
)ENGINE=InnoDB;

CREATE TABLE tipo_productos(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_tipo_productos PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE marcas(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_marcas PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE uni_medidas(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_uni_medidas PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE ivas(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
valor   double not null,
CONSTRAINT pk_ivas PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE productos(
id       int(10) auto_increment not null,
nombre   varchar(255) not null,
tipo_producto_id    integer(10) not null,
marca_id   int(10) not null,
descripcion   varchar(500) not null,
descuento_oferta    int(10) not null,
codigo   varchar(50) not null,
precio   double not null,
uni_medida_id   int(10) not null,
iva_id   int(10) not null,
cantidad_real   int(10) not null,
cantidad_en_pedido int(10),
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_productos PRIMARY KEY(id),
CONSTRAINT fk_tipo_producto FOREIGN KEY(tipo_producto_id) REFERENCES tipo_productos(id),
CONSTRAINT fk_marca FOREIGN KEY(marca_id) REFERENCES marcas(id),
CONSTRAINT fk_uni_medida FOREIGN KEY(uni_medida_id) REFERENCES uni_medidas(id),
CONSTRAINT fk_iva FOREIGN KEY(iva_id) REFERENCES ivas(id)
)ENGINE=InnoDB;

CREATE TABLE caracteristicas(
id       int(10) auto_increment not null,
caracteristica   varchar(50) not null,
producto_id	int(11) not null,
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_caracteristicas PRIMARY KEY(id),
CONSTRAINT fk_producto FOREIGN KEY(producto_id) REFERENCES productos(id) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE imagenes(
id       int(10) auto_increment not null,
imagen   varchar(255) not null,
producto_id	int(11) not null,
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_imagenes PRIMARY KEY(id),
CONSTRAINT fk_producto_img FOREIGN KEY(producto_id) REFERENCES productos(id) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE sockets(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_sockets PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE tipo_memorias(
id       int(10) auto_increment not null,
nombre   varchar(50) not null,
CONSTRAINT pk_tipo_memorias PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE especificaciones(
id       int(10) auto_increment not null,
producto_id   int(10) not null,
socket_id	int(11),
tipo_memoria_id	int(11),
sata_version	int(5),
usb_2	int(5),
usb_3	int(5),
vga	int(2),
hdmi	int(2),
dvi	int(2),
tamaño varchar(10),
mhz double,
bits int(5),
tamaño_fisico varchar(100),
adicionales varchar(500),
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_caracteristicas PRIMARY KEY(id),
CONSTRAINT fk_producto_id FOREIGN KEY(producto_id) REFERENCES productos(id) ON DELETE CASCADE,
CONSTRAINT fk_socket FOREIGN KEY(socket_id) REFERENCES sockets(id),
CONSTRAINT fk_tipo_memoria FOREIGN KEY(tipo_memoria_id) REFERENCES tipo_memorias(id)
)ENGINE=InnoDB;

CREATE TABLE compras(
id       int(10) auto_increment not null,
user_id   int(11) not null,
fecha date,
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_compras PRIMARY KEY(id),
CONSTRAINT fk_user_compras FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDB;

CREATE TABLE pedidos(
id       int(10) auto_increment not null,
cantidad   int(11) not null,
producto_id	int(11) not null,
user_id	int(11) not null,
compra_id	int(11),
precio_compra	int(11),
createdAt date,
updatedAt date,
deletedAt date,
CONSTRAINT pk_pedidos PRIMARY KEY(id),
CONSTRAINT fk_pedido_productos FOREIGN KEY(producto_id) REFERENCES productos(id) ON DELETE CASCADE,
CONSTRAINT fk_compras FOREIGN KEY(compra_id) REFERENCES compras(id) ON DELETE CASCADE,
CONSTRAINT fk_pedido_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
)ENGINE=InnoDB;




#CONDICIONES FISCALES
INSERT INTO condiciones_fiscales VALUES(NULL, 'Consumidor Final');
INSERT INTO condiciones_fiscales VALUES(NULL, 'Responsable Inscripto');
INSERT INTO condiciones_fiscales VALUES(NULL, 'Monotributista');


#PAISES
INSERT INTO paises VALUES(NULL, 'Argentina');
INSERT INTO paises VALUES(NULL, 'Brasil');
INSERT INTO paises VALUES(NULL, 'Uruguay');


#PROVINCIAS
INSERT INTO provincias VALUES(NULL, 1, 'Buenos Aires');
INSERT INTO provincias VALUES(NULL, 1,'CABA');
INSERT INTO provincias VALUES(NULL, 1,'Córdoba');
INSERT INTO provincias VALUES(NULL, 1,'Santa Fe');
INSERT INTO provincias VALUES(NULL, 2,'San Pablo');

#TIPOS DOCUMENTO
INSERT INTO tipos_documento VALUES(NULL, 'DNI');
INSERT INTO tipos_documento VALUES(NULL, 'PASAPORTE');
INSERT INTO tipos_documento VALUES(NULL, 'LE');

#TIPOS PERSONA
INSERT INTO tipos_personas VALUES(NULL, 'HUMANA');
INSERT INTO tipos_personas VALUES(NULL, 'JURIDICA');

INSERT INTO ivas
VALUES (null, 'normal', 21);
INSERT INTO ivas
VALUES (null,'reducido', 10.5);
INSERT INTO ivas
VALUES (null,'nulo', 0);

INSERT INTO marcas
VALUES (null,'Asus'),
       (null,'MSI'),
       (null,'Asrock'),
       (null,'Kingston'),
       (null,'Intel'),
       (null,'AMD');

INSERT INTO sockets
VALUES (null,'1151'),
       (null,'AM4'),
       (null,'LGA1200');

INSERT INTO tipo_memorias
VALUES (null,'DDR4'),
       (null,'GDDR5'),
       (null,'GDDR6');

INSERT INTO tipo_productos
VALUES (null,'CPU'),
       (null,'MEMORIA'),
       (null,'MOTHERBOARD'),
       (null,'ALMACENAMIENTO'),
       (null,'GABINETE'),
       (null,'MONITOR'),
       (null,'PLACA DE VIDEO');

INSERT INTO uni_medidas
VALUES (null,'unidad'),
       (null,'metros');

SOURCE populate_users.sql;
SOURCE populate_domicilios.sql;
SOURCE populate_productos.sql;
SOURCE populate_imagenes.sql;