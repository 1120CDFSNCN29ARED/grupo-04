use pc_components;

-- POPULATE USERS

insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('admin', 'admin', 18441603, 1, 'admin@admin.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1169013434, 0, 1, '1620167438577_img_.jpg', 1, 'VISA', '2020-04-20 19:46:44');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Korry', 'Headingham', 21086637, 1, 'kheadingham1@cmu.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1153843898, 0, 1, '1614030488780_img_.jpg', 0, 'VISA', '2020-05-12 07:30:46');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Madeleine', 'Baumann', 20610160, 1, 'mbaumann2@time.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1158155878, 0, 1, '90966010_img_.jpg', 0, 'AMEX', '2020-07-14 09:21:00');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Devan', 'Yaneev', 21955725, 1, 'dyaneev3@ucsd.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1153233969, 0, 1, '1621981494822_img_.jpg', 0, 'EFECTIVO', '2020-04-09 05:20:02');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kayley', 'Sails', 37611351, 1, 'ksails4@spotify.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1152627328, 1, 1, '90966010_img_.jpg', 0, 'AMEX', '2021-01-16 19:28:37');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Daren', 'Arnoll', 17079711, 1, 'darnoll5@stanford.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1160389306, 0, 1, '90966010_img_.jpg', 0, 'EFECTIVO', '2020-04-05 19:20:28');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Rees', 'MacManus', 21782984, 1, 'rmacmanus6@arstechnica.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1162538341, 1, 1, '1614033468118_img_.jpg', 0, 'AMEX', '2020-04-23 13:00:54');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Langsdon', 'Chafer', 13676345, 1, 'lchafer7@last.fm', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1167872296, 1, 1, '1621378318154_img_.jpg', 0, 'EFECTIVO', '2020-11-02 06:37:37');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Isa', 'Kaysor', 11011894, 1, 'ikaysor8@imdb.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1157197431, 1, 1, '1614030488780_img_.jpg', 0, 'AMEX', '2020-11-03 20:20:46');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Wright', 'Wintour', 31550963, 1, 'wwintour9@princeton.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1152129962, 1, 1, '16199', 0, 'EFECTIVO', '2021-04-23 18:46:21');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Alix', 'Symms', 35468349, 1, 'asymmsa@businessinsider.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1151429088, 0, 1, '1619990275880_img_.jpg', 0, 'AMEX', '2020-11-13 22:04:18');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Erin', 'Edwin', 16558209, 1, 'eedwinb@mail.ru', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1160768920, 1, 1, '1614033468118_img_.jpg', 0, 'AMEX', '2021-04-27 06:12:54');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Bradford', 'Klimuk', 21361862, 1, 'bklimukc@europa.eu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1169968441, 0, 1, '1621981494822_img_.jpg', 0, 'EFECTIVO', '2020-06-29 13:01:13');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Barth', 'Boddice', 24070555, 1, 'bboddiced@live.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1157971241, 1, 1, '90966010_img_.jpg', 0, 'VISA', '2020-09-24 06:39:58');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Harrison', 'Dargan', 30462086, 1, 'hdargane@hc360.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1163666311, 1, 1, '1619990275880_img_.jpg', 0, 'AMEX', '2020-06-27 01:23:03');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Arabelle', 'Filby', 18385248, 1, 'afilbyf@dmoz.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1163454239, 1, 1, '16199', 0, 'EFECTIVO', '2021-01-05 05:15:23');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Pall', 'Burkert', 28864330, 1, 'pburkertg@edublogs.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1167493566, 1, 1, '1614033468118_img_.jpg', 0, 'VISA', '2020-04-01 10:27:58');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kipp', 'Wathell', 20459734, 1, 'kwathellh@taobao.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1166398096, 1, 1, '90966010_img_.jpg', 0, 'AMEX', '2020-02-09 17:59:00');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Jsandye', 'Humm', 21489724, 1, 'jhummi@symantec.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1165400211, 0, 1, '1614033468118_img_.jpg', 0, 'EFECTIVO', '2021-03-05 05:20:18');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Xena', 'Rathbone', 36613869, 1, 'xrathbonej@edublogs.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1151724677, 1, 1, '1614030488780_img_.jpg', 0, 'AMEX', '2021-02-23 20:36:13');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Dorine', 'Kear', 10870632, 1, 'dkeark@tamu.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1155532167, 0, 1, '16199', 0, 'AMEX', '2020-10-05 08:30:40');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Geordie', 'Raikes', 21723596, 1, 'graikesl@boston.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1151047970, 0, 1, '1620167438577_img_.jpg', 0, 'EFECTIVO', '2020-12-16 12:03:29');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Tobi', 'Code', 32420181, 1, 'tcodem@smugmug.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1157327895, 1, 1, '1621981494822_img_.jpg', 0, 'EFECTIVO', '2020-11-02 21:21:16');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Lauraine', 'Pideon', 18453531, 1, 'lpideonn@opensource.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1164216413, 0, 1, '90966010_img_.jpg', 0, 'VISA', '2021-02-19 03:40:23');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Joseito', 'Giblin', 26934039, 1, 'jgiblino@msu.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1150525947, 1, 1, '1619990275880_img_.jpg', 0, 'VISA', '2021-02-18 08:29:48');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kippy', 'Izod', 14475664, 1, 'kizodp@forbes.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1159230555, 1, 1, '1621378318154_img_.jpg', 0, 'EFECTIVO', '2020-12-21 15:29:54');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kayle', 'Fishby', 24383754, 1, 'kfishbyq@baidu.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1161790817, 1, 1, '1619990275880_img_.jpg', 0, 'AMEX', '2020-06-21 04:20:44');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Gerhardine', 'Bardell', 20442895, 1, 'gbardellr@blogspot.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1151095167, 1, 1, '1619990275880_img_.jpg', 0, 'VISA', '2020-04-19 08:08:45');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Mariana', 'Knevet', 19320142, 1, 'mknevets@cnet.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1163711136, 1, 1, '1620167438577_img_.jpg', 0, 'VISA', '2020-04-07 03:09:30');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Marion', 'Fennelow', 29970648, 1, 'mfennelowt@networksolutions.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1154112141, 1, 1, '1621378318154_img_.jpg', 0, 'EFECTIVO', '2021-04-04 06:19:54');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Prentiss', 'Crankshaw', 11614991, 1, 'pcrankshawu@nsw.gov.au', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1165405474, 1, 1, '1621981494822_img_.jpg', 0, 'AMEX', '2020-12-20 06:25:28');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Tamarah', 'Tassell', 30242271, 1, 'ttassellv@nba.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1152274436, 0, 1, '16199', 0, 'AMEX', '2021-04-14 20:58:27');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Nefen', 'Gladdor', 33368963, 1, 'ngladdorw@joomla.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1157911814, 1, 1, '16199', 0, 'VISA', '2021-02-14 05:49:31');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Julia', 'Heinle', 24391097, 1, 'jheinlex@altervista.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1150128145, 1, 1, '90966010_img_.jpg', 0, 'AMEX', '2021-04-13 15:51:48');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Jamaal', 'Takkos', 18508545, 1, 'jtakkosy@statcounter.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1154192083, 1, 1, '1614030488780_img_.jpg', 0, 'VISA', '2020-08-31 04:07:15');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Manolo', 'Schrir', 25206080, 1, 'mschrirz@craigslist.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1160236946, 0, 1, '1614030488780_img_.jpg', 0, 'EFECTIVO', '2020-09-04 19:27:25');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Sonnie', 'Moses', 33634065, 1, 'smoses10@sogou.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1155725692, 1, 1, '16199', 0, 'AMEX', '2021-04-06 06:38:09');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kalil', 'Von Der Empten', 14966405, 1, 'kvonderempten11@google.it', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1168730302, 0, 1, '1619990275880_img_.jpg', 0, 'AMEX', '2021-02-23 11:03:45');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Skippie', 'Ilyuchyov', 37045536, 1, 'silyuchyov12@sakura.ne.jp', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1153311193, 0, 1, '1614033468118_img_.jpg', 0, 'EFECTIVO', '2020-12-08 00:23:44');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Liliane', 'McRuvie', 11687619, 1, 'lmcruvie13@ibm.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1166217081, 0, 1, '90966010_img_.jpg', 0, 'AMEX', '2020-05-16 14:54:29');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Stanly', 'Moth', 22041870, 1, 'smoth14@state.tx.us', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1157910505, 1, 1, '1620167438577_img_.jpg', 0, 'AMEX', '2020-12-17 13:50:27');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Rhodia', 'Ullyatt', 31567207, 1, 'rullyatt15@dmoz.org', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1161144665, 1, 1, '1614030488780_img_.jpg', 0, 'AMEX', '2020-02-12 17:08:19');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Jocelyn', 'Kingsnorth', 23304984, 1, 'jkingsnorth16@sun.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1164340808, 0, 1, '1614033468118_img_.jpg', 0, 'EFECTIVO', '2020-06-20 08:58:09');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Jordan', 'Cory', 35740216, 1, 'jcory17@twitpic.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 3, 1152186617, 0, 1, '1614033468118_img_.jpg', 0, 'VISA', '2020-04-25 18:47:46');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Elva', 'Whittam', 14312682, 1, 'ewhittam18@uiuc.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1169948786, 0, 1, '90966010_img_.jpg', 0, 'AMEX', '2021-01-02 16:06:16');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Myron', 'Gianulli', 15904006, 1, 'mgianulli19@free.fr', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1157406764, 0, 1, '1614030488780_img_.jpg', 0, 'AMEX', '2020-02-21 17:06:56');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Renie', 'Althrope', 36063790, 1, 'ralthrope1a@utexas.edu', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 1, 1154974912, 0, 1, '1614030488780_img_.jpg', 0, 'EFECTIVO', '2020-11-16 19:46:54');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Kania', 'Dahmke', 22517224, 1, 'kdahmke1b@networksolutions.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1168523431, 1, 1, '90966010_img_.jpg', 0, 'EFECTIVO', '2020-05-28 14:01:59');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Mariette', 'Keri', 28816872, 1, 'mkeri1c@myspace.com', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1151846453, 1, 1, '1619990275880_img_.jpg', 0, 'VISA', '2021-04-25 10:17:42');
insert into users (name,  last_name,  documento, tipo_documento_id,  email,  pass,  condicion_fiscal_id, telefono,  ofertas,  tipo_persona_id,  image,  admin,  medio_pago, createdAt) values ('Grier', 'Coche', 18149748, 1, 'gcoche1d@tiny.cc', '$2a$10$5bwZ/rFNMGF1/.aG08FSwO0jIhPSbVV1S/BJ1pdf1gs6/CynEV9La', 2, 1160872611, 0, 1, '1621981494822_img_.jpg', 0, 'VISA', '2021-03-11 14:01:50');

-- POPULATE DOMICILIOS

insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (1, '14 Goodland Alley', 4752, 'CABA', 3, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (2, '296 Mandrake Drive', 2371, 'CABA', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (3, '98462 Butterfield Court', 3202, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (4, '569 Stuart Alley', 3245, 'CABA', 1, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (5, '50 Columbus Street', 1454, 'CABA', 3, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (6, '07 Jenna Way', 2218, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (7, '3 Mockingbird Alley', 1761, 'CABA', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (8, '987 Village Plaza', 3040, 'Norrbotten', 1, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (9, '46 Myrtle Terrace', 4104, 'Dalarna', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (10, '4 Village Green Drive', 7702, 'CABA', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (11, '2592 Anthes Drive', 7492, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (12, '2 Laurel Way', 5473, 'CABA', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (13, '4 Sauthoff Court', 3800, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (14, '5 Hansons Parkway', 1012, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (15, '1983 Chinook Circle', 5227, 'CABA', 3, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (16, '0995 Roth Center', 6101, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (17, '28 Commercial Pass', 1405, 'CABA', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (18, '16943 Boyd Center', 6666, 'Kalmar', 1, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (19, '60 Kedzie Pass', 5802, 'CABA', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (20, '102 Hermina Hill', 5379, 'CABA', 3, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (21, '72 Hudson Center', 6739, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (22, '70398 Susan Drive', 3111, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (23, '43963 Ridgeview Crossing', 1283, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (24, '155 Harper Place', 1284, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (25, '1653 Chinook Parkway', 1301, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (26, '1 Fuller Hill', 7714, 'CABA', 3, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (27, '9495 Westport Way', 7547, 'CABA', 1, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (28, '71 Ridge Oak Pass', 4085, 'Lisboa', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (29, '1 Welch Plaza', 3710, 'CABA', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (30, '291 Fremont Hill', 3005, 'CABA', 1, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (31, '97 Helena Point', 5658, 'Florida', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (32, '1 Manufacturers Court', 4772, 'Tennessee', 2, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (33, '7851 Melody Way', 1083, 'CABA', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (34, '550 Prairie Rose Lane', 3003, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (35, '25 Dakota Center', 6098, 'Västra Götaland', 4, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (36, '039 Walton Alley', 7047, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (37, '969 Glacier Hill Crossing', 2297, 'Stockholm', 1, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (38, '91 Prentice Plaza', 2603, 'New Jersey', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (39, '6650 Express Trail', 4654, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (40, '93 Portage Drive', 1405, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (41, '401 Fair Oaks Trail', 1175, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (42, '04155 Declaration Alley', 1690, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (43, '452 Caliangt Trail', 1755, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (44, '52180 Dottie Plaza', 6160, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (45, '804 Mariners Cove Circle', 4380, 'CABA', 1, 1, true);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (46, '8 Westerfield Road', 2036, 'CABA', 4, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (47, '7 Mendota Parkway', 7426, 'CABA', 2, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (48, '1358 Stang Park', 1586, 'CABA', 3, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (49, '2311 Eggendart Street', 7984, 'CABA', 1, 1, false);
insert into domicilios (user_id, calle, cp, localidad, provincia_id, pais_id, envio) values (50, '75699 Lawn Park', 5138, 'Ontario', 4, 1, true);

-- POPULATE PRODUCTOS

insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB TOSHIBA 5400 SATA NOTEBOOK', 4, 3, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 0, '285-81-6488', 10259.03, 1, 2, 96, '2020-02-22 08:22:51');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 7, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '660-66-9457', 9071.07, 1, 2, 40, '2020-12-31 23:36:45');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB W.DIGITAL 5400 SATA3 NOTEBOOK', 6, 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, '568-40-5723', 12059.55, 1, 1, 19, '2020-08-25 03:22:27');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G470 2.0GHZ 1.5MB 1155', 7, 6, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '155-55-6665', 9439.76, 1, 2, 36, '2020-10-14 11:51:54');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB SANDISK', 2, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '264-79-1832', 18341.15, 1, 2, 246, '2020-08-06 16:20:23');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB HITACHI 5400 SATA NOTEBOOK', 7, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, '294-88-0141', 19751.28, 1, 1, 127, '2019-10-01 10:09:08');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G6950 DUALCORE 2.8GHZ 3MB 1156', 6, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1, '315-49-2558', 13050.48, 1, 1, 383, '2020-08-15 02:03:01');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 1, 2, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, '136-53-7787', 15664.3, 1, 1, 178, '2019-10-26 21:15:10');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 4, 4, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, '151-29-2514', 14521.04, 1, 1, 318, '2020-11-12 11:53:34');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3470 3.6GHZ 6MB S1155', 1, 4, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, '502-80-3417', 14535.67, 1, 1, 365, '2020-02-29 14:52:44');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4160 3.6GHZ 3M S1150', 5, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 0, '736-91-0055', 17169.06, 1, 1, 325, '2020-09-24 22:44:03');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 2, 3, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 0, '484-80-7271', 1527.09, 1, 1, 374, '2021-03-04 16:15:22');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3470 3.6GHZ 6MB S1155', 7, 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 0, '736-20-2088', 6451.65, 1, 2, 316, '2020-02-04 04:58:27');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 64GB KINGSTON TRAVELER', 7, 6, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, '726-12-2334', 11724.65, 1, 2, 241, '2021-03-26 09:05:03');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 2, 3, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, '634-21-1328', 13278.39, 1, 2, 240, '2020-01-26 12:15:25');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4160 3.6GHZ 3M S1150', 5, 4, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, '899-13-3736', 744.32, 1, 1, 266, '2021-04-27 15:56:45');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER', 2, 2, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, '465-45-1298', 9848.4, 1, 2, 411, '2020-03-15 09:04:08');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G470 2.0GHZ 1.5MB 1155', 2, 6, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 0, '577-52-5544', 17781.74, 1, 1, 199, '2021-02-01 18:54:59');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 7, 6, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0, '155-14-2597', 12300.45, 1, 2, 30, '2021-03-29 11:00:46');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON METAL', 5, 4, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 0, '249-57-1906', 5438.05, 1, 2, 45, '2020-06-01 06:49:47');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 1, 5, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 0, '735-41-8964', 17971.92, 1, 1, 162, '2019-10-14 13:52:35');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB SANDISK', 5, 3, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 0, '735-07-6257', 13770.44, 1, 1, 209, '2019-12-29 05:08:44');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB PERSONAJES', 2, 5, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 0, '206-96-9307', 13150.95, 1, 1, 52, '2020-02-13 23:47:08');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 64GB KINGSTON TRAVELER', 6, 6, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, '128-61-3418', 14680.06, 1, 1, 487, '2020-10-23 19:34:37');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 2TB TOSHIBA 5400 SATA NOTEBOOK', 5, 3, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 0, '621-30-7300', 3477.48, 1, 1, 434, '2019-10-10 07:13:45');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3470 3.6GHZ 6MB S1155', 3, 4, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, '674-02-4973', 19849.05, 1, 1, 78, '2020-12-20 12:18:07');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G6950 DUALCORE 2.8GHZ 3MB 1156', 4, 6, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '218-42-4924', 16134.47, 1, 1, 83, '2020-07-28 02:41:31');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB PERSONAJES', 3, 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, '488-80-6456', 13031.11, 1, 2, 277, '2020-12-13 16:46:52');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 4, 1, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, '509-61-0751', 15671.49, 1, 1, 228, '2020-06-29 04:35:45');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON METAL', 6, 3, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 0, '870-52-6538', 10453.67, 1, 1, 46, '2020-03-09 08:28:25');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 2, 2, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0, '194-27-2531', 5654.36, 1, 1, 291, '2019-10-01 01:03:23');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK JACK', 5, 2, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '463-52-2402', 14865.22, 1, 2, 187, '2021-02-16 03:18:53');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 2, 1, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1, '257-38-4507', 3126.28, 1, 1, 377, '2020-09-15 01:59:51');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 1, 5, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0, '827-44-9802', 7851.04, 1, 1, 337, '2020-04-07 19:34:57');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 5, 6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 0, '400-49-9688', 15936.71, 1, 2, 52, '2021-02-26 09:01:35');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK JACK', 2, 1, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, '348-89-1175', 4274.98, 1, 1, 310, '2020-12-08 16:47:07');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB SAMSUNG 5400 SATA NOTEBOOK', 3, 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 1, '631-51-7277', 17829.34, 1, 2, 18, '2020-02-04 19:51:28');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON METAL', 7, 5, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 1, '693-88-4724', 2968.43, 1, 2, 91, '2020-02-20 15:46:51');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 2TB TOSHIBA 5400 SATA NOTEBOOK', 5, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '219-72-5556', 7610.34, 1, 1, 293, '2020-04-19 19:50:42');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4170 3.7GHZ 3M S1150', 7, 6, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, '301-63-9810', 18935.34, 1, 1, 214, '2019-12-18 17:22:20');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 1, 4, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 1, '719-53-4105', 3394.01, 1, 2, 116, '2021-05-06 09:12:39');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB PERSONAJES', 2, 6, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, '505-19-9020', 723.3, 1, 1, 64, '2019-10-15 01:21:22');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB KINGSTON BLUE', 4, 4, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, '407-27-1657', 19570.47, 1, 1, 424, '2020-12-31 01:10:25');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER', 1, 4, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, '310-51-5628', 14395.3, 1, 2, 214, '2020-03-07 20:50:59');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570K 3.8GHZ 6MB S1155', 1, 4, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 0, '661-26-2027', 9772.3, 1, 2, 334, '2020-04-03 06:15:14');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB SAMSUNG 5400 SATA NOTEBOOK', 4, 1, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '710-88-2286', 17933.28, 1, 1, 467, '2020-12-04 18:55:43');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON', 3, 2, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 1, '324-74-3977', 13304.8, 1, 2, 305, '2021-02-15 05:28:28');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 4, 4, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 1, '319-29-8173', 4081.45, 1, 1, 364, '2021-05-03 16:48:52');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB W.DIGITAL 5400 SATA3 NOTEBOOK', 2, 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 1, '165-47-3219', 4027.06, 1, 2, 97, '2020-05-20 07:17:55');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB W.DIGITAL 5400 SATA NOTEBOOK', 3, 6, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '859-42-6837', 1354.27, 1, 1, 51, '2020-06-26 04:48:36');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 64GB KINGSTON TRAVELER', 3, 2, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1, '707-42-3996', 14755.65, 1, 1, 215, '2020-07-16 11:35:28');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 6, 6, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '418-31-3840', 12515.1, 1, 1, 414, '2021-03-08 08:02:18');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 6, 5, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1, '457-47-6293', 11770.74, 1, 1, 474, '2020-10-23 15:31:49');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4170 3.7GHZ 3M S1150', 3, 5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 0, '411-58-0478', 14686.39, 1, 2, 439, '2020-08-24 11:25:08');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 3, 4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 0, '381-59-6423', 377.73, 1, 2, 325, '2020-11-04 09:31:43');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 3, 2, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, '746-72-0007', 17246.9, 1, 2, 406, '2021-02-03 18:56:00');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4360 3.70GHZ 4M S1150', 2, 6, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 0, '465-56-2586', 3514.82, 1, 1, 51, '2019-12-30 00:41:14');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4360 3.70GHZ 4M S1150', 1, 6, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0, '294-85-4378', 15936.05, 1, 1, 141, '2020-02-15 14:22:34');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 5, 2, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 0, '767-94-8460', 8249.11, 1, 1, 17, '2020-04-21 01:37:06');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 4, 6, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 0, '840-80-7861', 11529.23, 1, 1, 492, '2020-06-20 02:03:55');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB PERSONAJES', 5, 1, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 1, '237-89-7488', 4193.16, 1, 1, 105, '2020-07-19 12:20:39');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 2TB TOSHIBA 5400 SATA NOTEBOOK', 2, 5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 0, '760-90-8129', 2721.46, 1, 1, 378, '2020-06-01 22:12:53');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB SANDISK', 3, 2, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, '237-53-8945', 19460.23, 1, 1, 424, '2019-12-31 00:53:32');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON METAL', 6, 5, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '246-76-0853', 14699.73, 1, 2, 359, '2021-04-22 20:56:37');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4360 3.70GHZ 4M S1150', 5, 4, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 0, '374-09-3044', 17433.66, 1, 2, 354, '2020-02-14 11:21:52');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 6, 3, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 0, '750-39-5181', 16635.12, 1, 1, 335, '2019-10-15 17:30:48');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 7, 2, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, '218-19-3124', 2288.24, 1, 2, 38, '2019-10-15 09:46:20');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 5, 1, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 0, '857-58-6141', 7446.83, 1, 1, 409, '2021-01-12 17:24:40');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 320GB TOSHIBA 5400 SATA NOTEBOOK', 3, 3, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '782-92-3847', 2635.55, 1, 2, 313, '2020-01-29 20:55:20');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB SANDISK', 3, 4, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 1, '557-80-1210', 1178.1, 1, 1, 94, '2021-01-26 01:19:17');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570K 3.8GHZ 6MB S1155', 7, 1, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 1, '215-82-8718', 11360.86, 1, 1, 164, '2021-01-30 07:10:11');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER', 2, 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 0, '795-08-3918', 261.76, 1, 2, 174, '2020-03-28 05:46:58');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 4, 1, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, '578-92-5258', 12506.51, 1, 2, 394, '2021-02-10 04:24:10');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G470 2.0GHZ 1.5MB 1155', 4, 3, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 0, '673-44-4564', 12347.92, 1, 2, 302, '2020-03-27 00:21:24');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 4, 4, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '542-03-1544', 5493.07, 1, 2, 298, '2020-11-09 06:57:48');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 5, 6, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, '648-53-3190', 13155.95, 1, 2, 490, '2020-02-19 16:27:32');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3470 3.6GHZ 6MB S1155', 4, 4, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, '583-13-5395', 17507.04, 1, 2, 79, '2020-04-24 06:48:05');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB TOSHIBA 5400 SATA NOTEBOOK', 6, 3, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 0, '736-78-6285', 11150.21, 1, 2, 394, '2019-11-02 15:09:00');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON', 7, 3, 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, '202-98-0595', 17604.95, 1, 2, 491, '2021-01-23 08:06:59');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 3, 4, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 0, '139-55-9269', 150.51, 1, 2, 144, '2020-09-05 06:44:33');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 7, 3, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 1, '310-41-7542', 2400.35, 1, 2, 473, '2020-01-19 15:00:02');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON RED', 1, 3, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 0, '558-62-4597', 2935.38, 1, 2, 348, '2021-02-01 16:38:14');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 2TB TOSHIBA 5400 SATA NOTEBOOK', 2, 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 1, '389-48-4922', 17295.71, 1, 1, 217, '2020-07-13 06:31:07');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB TOSHIBA 5400 SATA NOTEBOOK', 2, 6, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 0, '120-33-9056', 15325.27, 1, 1, 267, '2020-05-16 04:50:31');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4160 3.6GHZ 3M S1150', 2, 2, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, '534-16-0581', 836.32, 1, 2, 260, '2021-02-20 17:09:17');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570K 3.8GHZ 6MB S1155', 7, 3, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 1, '135-53-6358', 1207.45, 1, 2, 208, '2020-04-29 22:06:49');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 4GB PERSONAJES', 3, 3, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, '430-48-8174', 10350.1, 1, 2, 220, '2020-10-26 16:21:45');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU G470 2.0GHZ 1.5MB 1155', 3, 5, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '207-28-7535', 18514.81, 1, 2, 131, '2020-03-12 18:52:05');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON METAL', 5, 1, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, '229-87-0272', 2014.86, 1, 1, 279, '2021-03-07 16:03:42');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570 3.8GHZ 6MB S1155', 3, 3, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '376-66-3861', 8102.9, 1, 1, 358, '2020-03-31 02:47:46');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570K 3.8GHZ 6MB S1155', 6, 6, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 0, '155-55-6927', 19369.63, 1, 1, 103, '2019-12-01 03:13:44');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570 3.8GHZ 6MB S1155', 3, 4, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '132-04-5523', 10176.44, 1, 1, 291, '2021-01-27 02:53:25');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON TRAVELER METALICA', 3, 3, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 0, '377-81-2924', 790.18, 1, 1, 12, '2020-03-18 17:46:37');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 1TB TOSHIBA 5400 SATA NOTEBOOK', 7, 6, 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1, '102-12-7277', 5166.48, 1, 2, 254, '2020-03-28 03:06:33');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 4, 3, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, '178-83-2573', 5538.31, 1, 2, 276, '2019-12-05 20:56:38');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 2TB TOSHIBA 5400 SATA NOTEBOOK', 4, 1, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1, '321-08-5803', 1565.88, 1, 1, 301, '2019-12-19 00:46:51');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I3-4170 3.7GHZ 3M S1150', 2, 3, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1, '441-37-0213', 2932.63, 1, 2, 370, '2020-09-18 09:54:34');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('MEM USB 8GB KINGSTON BLACK', 1, 3, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 0, '246-10-9740', 9750.6, 1, 2, 418, '2021-01-08 08:11:39');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('CPU I5-3570 3.8GHZ 6MB S1155', 6, 2, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 0, '196-55-9065', 13737.97, 1, 1, 45, '2021-04-07 09:22:54');
insert into productos (nombre, tipo_producto_id, marca_id, descripcion, descuento_oferta, codigo, precio, uni_medida_id, iva_id, cantidad_real, createdAt) values ('HD 500GB SAMSUNG 5400 SATA2  NOTEBOOK', 6, 6, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1, '848-50-6755', 11160.8, 1, 1, 40, '2021-04-01 04:49:02');

-- POPULATE IMAGENES

insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 78, '2021-05-08 18:05:11');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 81, '2020-01-06 13:48:01');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 32, '2021-01-09 01:15:20');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 27, '2020-09-22 23:35:17');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 9, '2020-05-27 09:30:46');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 69, '2020-11-22 08:40:28');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 9, '2021-01-08 17:08:40');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 98, '2020-01-29 00:46:33');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 82, '2020-01-03 14:43:38');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 83, '2020-01-15 20:21:24');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 11, '2020-08-24 13:15:19');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 75, '2020-04-07 11:14:21');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 52, '2020-10-05 21:00:08');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 5, '2020-09-06 21:06:11');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 89, '2021-04-09 00:12:26');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 13, '2021-02-10 03:55:00');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 69, '2020-06-16 08:04:32');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 52, '2021-01-11 04:37:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 20, '2020-02-23 03:47:14');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 22, '2021-03-25 01:04:43');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 73, '2020-02-23 21:42:51');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 5, '2019-12-05 20:13:24');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 9, '2020-02-08 07:50:49');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 27, '2020-04-10 18:55:01');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 67, '2020-03-26 22:31:22');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 17, '2020-05-17 19:33:39');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 99, '2020-03-29 12:23:51');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 61, '2019-12-09 03:52:46');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 8, '2020-09-21 04:30:42');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 39, '2021-04-24 23:38:55');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 91, '2020-12-25 06:04:29');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 1, '2020-06-07 04:29:32');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 89, '2020-12-12 02:06:27');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 36, '2020-08-14 09:57:13');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 38, '2021-04-07 13:56:55');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 81, '2020-03-22 14:20:58');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 14, '2020-11-28 23:22:29');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 30, '2020-02-21 17:37:31');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 47, '2020-11-21 07:55:10');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 28, '2020-11-21 08:13:05');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 1, '2021-04-11 21:15:55');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 100, '2021-05-24 21:58:24');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 14, '2021-05-20 03:00:14');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 88, '2020-12-14 09:37:43');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 54, '2020-04-13 08:57:47');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 92, '2020-06-03 02:43:50');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 18, '2021-05-03 18:51:37');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 40, '2020-01-14 16:08:19');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 5, '2020-12-22 16:31:04');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 4, '2020-01-11 22:38:12');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 23, '2020-06-22 15:07:27');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 92, '2020-07-29 08:37:36');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 95, '2020-05-24 10:59:46');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 30, '2019-12-02 14:40:35');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 27, '2020-08-09 16:10:14');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 47, '2020-06-05 14:32:25');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 52, '2020-08-31 21:15:14');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 22, '2020-11-05 07:09:57');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 64, '2021-01-15 16:03:26');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 22, '2020-11-08 08:06:53');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 42, '2020-06-20 22:22:14');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 59, '2020-10-22 14:34:25');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 76, '2020-08-27 06:22:06');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 71, '2020-02-16 21:50:07');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 52, '2020-01-11 14:38:23');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 3, '2021-05-08 15:47:45');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 71, '2021-01-03 14:44:20');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 42, '2020-01-30 22:55:46');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 89, '2019-12-08 05:55:03');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 51, '2020-03-07 07:23:35');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 76, '2021-02-14 03:32:21');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 43, '2020-09-12 08:00:58');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 96, '2020-02-15 23:08:40');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 49, '2020-05-03 08:03:18');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 23, '2020-06-07 11:00:47');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 24, '2020-03-16 10:47:50');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 60, '2020-01-01 00:19:53');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 60, '2020-12-16 21:03:18');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 32, '2020-10-07 12:58:09');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 87, '2020-01-22 19:16:41');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 91, '2020-06-06 21:50:09');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 50, '2020-03-27 12:52:48');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 38, '2020-04-02 03:57:46');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 27, '2020-06-03 15:13:23');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 48, '2020-06-17 06:30:20');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 65, '2021-01-04 18:00:19');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 24, '2020-08-09 15:22:20');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 80, '2020-04-08 01:47:44');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 68, '2020-05-09 21:25:27');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 42, '2020-12-28 04:31:28');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 55, '2021-02-20 12:19:20');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 40, '2020-10-26 16:15:48');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 68, '2020-02-16 17:09:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 2, '2021-04-17 05:03:34');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 4, '2020-10-30 04:03:12');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 66, '2020-07-19 14:27:09');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 45, '2021-04-27 13:51:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 27, '2020-12-07 06:56:33');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 84, '2020-01-14 03:19:58');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 81, '2021-04-06 11:52:28');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 85, '2020-05-12 16:14:16');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 29, '2020-02-12 22:14:06');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 13, '2020-11-27 19:32:47');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 45, '2021-01-21 03:51:21');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 92, '2020-10-23 22:13:37');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 78, '2021-03-14 07:21:39');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 72, '2021-02-16 04:31:30');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 51, '2020-12-11 12:18:18');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 86, '2020-08-20 06:39:14');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 82, '2021-03-23 21:10:21');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 33, '2020-03-26 12:30:59');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 81, '2021-02-06 17:25:31');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 97, '2020-02-04 19:49:08');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 60, '2021-02-08 20:48:43');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 78, '2020-03-18 22:28:35');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 91, '2020-07-03 14:47:53');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 47, '2020-04-17 08:52:24');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 81, '2020-01-28 12:54:22');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 88, '2020-11-04 15:13:47');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 24, '2020-07-19 08:53:28');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 93, '2020-02-17 20:52:58');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 48, '2020-04-04 19:45:21');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 55, '2020-12-05 10:48:17');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 49, '2019-12-06 12:39:57');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 76, '2020-12-30 12:38:06');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 49, '2020-09-08 07:12:56');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 16, '2020-01-04 09:38:35');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 64, '2020-09-09 20:01:24');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 31, '2020-12-17 23:31:52');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 75, '2021-05-07 03:07:53');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 14, '2021-04-24 20:15:13');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 92, '2020-10-28 19:25:59');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 84, '2021-05-26 19:33:28');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 94, '2020-01-19 09:23:22');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 23, '2020-11-30 21:45:03');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 66, '2020-02-24 04:57:14');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 91, '2020-10-29 04:27:09');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 93, '2021-05-09 12:04:13');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 98, '2021-03-11 07:18:20');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 52, '2020-02-27 18:42:33');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 75, '2020-08-15 16:48:24');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 19, '2020-12-13 07:34:22');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 30, '2020-04-04 15:39:08');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 56, '2020-12-23 17:16:44');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 91, '2021-03-11 13:17:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 33, '2020-05-09 20:38:02');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 75, '2020-10-16 01:44:43');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 96, '2020-05-26 20:08:52');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 43, '2020-05-10 20:38:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 25, '2020-03-25 17:54:44');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 7, '2020-02-23 20:38:02');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 30, '2020-08-18 13:28:39');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 40, '2020-01-30 02:20:51');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 35, '2020-09-02 19:50:59');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 13, '2020-10-31 13:33:20');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 55, '2020-05-04 08:42:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 98, '2020-10-16 02:04:01');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 57, '2020-09-29 03:37:52');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 67, '2021-05-18 16:38:09');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 34, '2020-01-10 12:46:04');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 58, '2020-05-12 18:23:42');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 71, '2019-12-01 18:20:12');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 17, '2020-07-16 06:49:14');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 36, '2020-03-06 18:56:56');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 57, '2020-02-10 21:58:31');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 60, '2020-08-26 00:24:10');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 3, '2020-08-22 16:13:46');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 26, '2020-02-16 16:58:15');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 59, '2021-04-20 20:47:04');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 3, '2020-06-28 18:24:53');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 91, '2020-12-07 13:04:54');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 31, '2020-07-02 12:59:16');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 99, '2021-02-02 17:49:31');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 1, '2020-08-07 10:32:23');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 16, '2021-01-14 05:47:32');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 24, '2021-05-08 06:01:56');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 93, '2020-07-31 16:03:56');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 1, '2020-07-02 03:46:23');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 47, '2020-04-05 23:03:42');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 83, '2020-09-19 18:15:55');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 29, '2021-04-28 07:01:11');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 60, '2020-06-14 13:42:05');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 66, '2020-12-01 20:49:10');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 62, '2020-03-23 11:56:38');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 71, '2021-02-16 23:07:14');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 45, '2020-11-10 04:45:10');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 74, '2020-10-21 19:19:58');
insert into imagenes (imagen, producto_id, createdAt) values ('img-home-banner.jpg', 58, '2021-02-08 09:21:24');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 65, '2020-04-28 19:24:30');
insert into imagenes (imagen, producto_id, createdAt) values ('img-tv-samsung-smart.jpg', 22, '2021-04-15 06:53:34');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 34, '2020-06-03 05:08:36');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-3.webp', 62, '2020-01-02 09:00:48');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 48, '2020-09-15 17:03:35');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro.webp', 99, '2020-05-10 14:09:35');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 61, '2020-04-19 17:21:56');
insert into imagenes (imagen, producto_id, createdAt) values ('img-cafetera-moulinex.jpg', 85, '2020-05-25 02:00:28');
insert into imagenes (imagen, producto_id, createdAt) values ('img-macbook-pro-2019.jpg', 53, '2021-05-03 05:16:49');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-1.webp', 96, '2021-02-18 03:28:27');
insert into imagenes (imagen, producto_id, createdAt) values ('Aorus-h470-pro-2.webp', 19, '2020-04-21 09:40:41');
insert into imagenes (imagen, producto_id, createdAt) values ('img-samsung-galaxy-s10.jpg', 47, '2020-12-02 17:23:18');

