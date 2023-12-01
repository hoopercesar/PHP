CREATE DATABASE IF NOT EXISTS sistema_votacion;
USE sistema_votacion;

CREATE TABLE regiones (
  id INT NOT NULL AUTO_INCREMENT,
  region varchar(64) NOT NULL,
  abreviatura varchar(4) NOT NULL,
  capital varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO regiones (id,region,abreviatura,capital)
VALUES
	(1,'Arica y Parinacota','AP','Arica'),
	(2,'Tarapacá','TA','Iquique'),
	(3,'Antofagasta','AN','Antofagasta'),
	(4,'Atacama','AT','Copiapó'),
	(5,'Coquimbo','CO','La Serena'),
	(6,'Valparaiso','VA','valparaíso'),
	(7,'Metropolitana de Santiago','RM','Santiago'),
	(8,'Libertador General Bernardo O\'Higgins','OH','Rancagua'),
	(9,'Maule','MA','Talca'),
	(10,'Ñuble','NB','Chillán'),
	(11,'Biobío','BI','Concepción'),
	(12,'La Araucanía','IAR','Temuco'),
	(13,'Los Ríos','LR','Valdivia'),
	(14,'Los Lagos','LL','Puerto Montt'),
	(15,'Aysén del General Carlos Ibáñez del Campo','AI','Coyhaique'),
	(16,'Magallanes y de la Antártica Chilena','MG','Punta Arenas');
    
CREATE TABLE provincias (
  id int(11) NOT NULL AUTO_INCREMENT,
  provincia varchar(64) NOT NULL,
  region_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

INSERT INTO provincias (id, provincia,region_id)
VALUES
	(1,'Arica',1),
	(2,'Parinacota',1),
	(3,'Iquique',2),
	(4,'El Tamarugal',2),
	(5,'Tocopilla',3),
	(6,'El Loa',3),
	(7,'Antofagasta',3),
	(8,'Chañaral',4),
	(9,'Copiapó',4),
	(10,'Huasco',4),
	(11,'Elqui',5),
	(12,'Limarí',5),
	(13,'Choapa',5),
 	(14,'Petorca',6),
	(15,'Los Andes',6),
 	(16,'San Felipe de Aconcagua',6),
 	(17,'Quillota',6),
	(18,'Valparaiso',6),
	(19,'San Antonio',6),
	(20,'Isla de Pascua',6),
	(21,'Marga Marga',6),
	(22,'Chacabuco',7),
	(23,'Santiago',7),
	(24,'Cordillera',7),
	(25,'Maipo',7),
	(26,'Melipilla',7),
	(27,'Talagante',7),
	(28,'Cachapoal',8),
	(29,'Colchagua',8),
	(30,'Cardenal Caro',8),
	(31,'Curicó',9),
	(32,'Talca',9),
 	(33,'Linares',9),
	(34,'Cauquenes',9),
	(35,'Diguillín',10),
	(36,'Itata',10),
	(37,'Punilla',10),
	(38,'Bio Bío',11),
	(39,'Concepción',11),
	(40,'Arauco',11),
	(41,'Malleco',12),
	(42,'Cautín',12),
	(43,'Valdivia',13),
	(44,'Ranco',13),
	(45,'Osorno',14),
	(46,'Llanquihue',14),
	(47,'Chiloé',14),
	(48,'Palena',14),
	(49,'Coyhaique',15),
	(50,'Aysén',15),
	(51,'General Carrera',15),
	(52,'Capitán Prat',15),
	(53,'Última Esperanza',16),
	(54,'Magallanes',16),
	(55,'Tierra del Fuego',16),
	(56,'Antártica Chilena',16);

CREATE TABLE comunas (
  id int(11) NOT NULL AUTO_INCREMENT,
  comuna varchar(64) NOT NULL,
  provincia_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

INSERT INTO comunas (id,comuna,provincia_id)
VALUES
	(1,'Arica',1),
	(2,'Camarones',1),
	(3,'General Lagos',2),
	(4,'Putre',2),
	(5,'Alto Hospicio',3),
	(6,'Iquique',3),
	(7,'Camiña',4),
	(8,'Colchane',4),
	(9,'Huara',4),
	(10,'Pica',4),
	(11,'Pozo Almonte',4),
  	(12,'Tocopilla',5),
  	(13,'María Elena',5),
	(14,'Calama',6),
	(15,'Ollague',6),
	(16,'San Pedro de Atacama',6),
  	(17,'Antofagasta',7),
	(18,'Mejillones',7),
	(19,'Sierra Gorda',7),
	(20,'Taltal',7),
	(21,'Chañaral',8),
	(22,'Diego de Almagro',8),
  	(23,'Copiapó',9),
	(24,'Caldera',9),
	(25,'Tierra Amarilla',9),
  	(26,'Vallenar',10),
	(27,'Alto del Carmen',10),
	(28,'Freirina',10),
	(29,'Huasco',10),
	(30,'La Serena',11),
  	(31,'Coquimbo',11),
  	(32,'Andacollo',11),
  	(33,'La Higuera',11),
  	(34,'Paihuano',11),
	(35,'Vicuña',11),
	(36,'Ovalle',12),
  	(37,'Combarbalá',12),
  	(38,'Monte Patria',12),
  	(39,'Punitaqui',12),
	(40,'Río Hurtado',12),
	(41,'Illapel',13),
	(42,'Canela',13),
	(43,'Los Vilos',13),
	(44,'Salamanca',13),
	(45,'La Ligua',14),
  	(46,'Cabildo',14),
	(47,'Zapallar',14),
  	(48,'Papudo',14),
	(49,'Petorca',14),
	(50,'Los Andes',15),
	(51,'San Esteban',15),
  	(52,'Calle Larga',15),
  	(53,'Rinconada',15),
	(54,'San Felipe',16),
  	(55,'Llaillay',16),
  	(56,'Putaendo',16),
	(57,'Santa María',16),
	(58,'Catemu',16),
	(59,'Panquehue',16),
  	(60,'Quillota',17),
  	(61,'La Cruz',17),
	(62,'La Calera',17),
	(63,'Nogales',17),
  	(64,'Hijuelas',17),
	(65,'Valparaíso',18),	
  	(66,'Viña del Mar',18),
	(67,'Concón',18),
 	(68,'Quintero',18),
  	(69,'Puchuncaví',18),
	(70,'Casablanca',18),
	(71,'Juan Fernández',18),
	(72,'San Antonio',19),
  	(73,'Cartagena',19),
	(74,'El Tabo',19),
	(75,'El Quisco',19),
	(76,'Algarrobo',19),
	(77,'Santo Domingo',19),
	(78,'Isla de Pascua',20),
	(79,'Quilpué',21),
	(80,'Limache',21),
	(81,'Olmué',21),
	(82,'Villa Alemana',21),
	(83,'Colina',22),
	(84,'Lampa',22),
	(85,'Tiltil',22),
	(86,'Santiago',23),
	(87,'Vitacura',23),
  	(88,'San Ramón',23),
	(89,'San Miguel',23),
	(90,'San Joaquín',23),
  	(91,'Renca',23),
	(92,'Recoleta',23),
  	(93,'Quinta Normal',23),
	(94,'Quilicura',23),
  	(95,'Pudahuel',23),
  	(96,'Providencia',23),
	(97,'Peñalolén',23),
  	(98,'Pedro Aguirre Cerda',23),
	(99,'Ñuñoa',23),
	(100,'Maipú',23),
	(101,'Macul',23),
	(102,'Lo Prado',23),
	(103,'Lo Espejo',23),
	(104,'Lo Barnechea',23),
	(105,'Las Condes',23),
	(106,'La Reina',23),
	(107,'La Pintana',23),
	(108,'La Granja',23),
	(109,'La Florida',23),
  	(110,'La Cisterna',23),
  	(111,'Independencia',23),
  	(112,'Huechuraba',23),
	(113,'Estación Central',23),
  	(114,'El Bosque',23),
  	(115,'Conchalí',23),
  	(116,'Cerro Navia',23),
  	(117,'Cerrillos',23),
	(118,'Puente Alto',24),
	(119,'San José de Maipo',24),
  	(120,'Pirque',24),
	(121,'San Bernardo',25),
	(122,'Buin',25),
  	(123,'Paine',25),
	(124,'Calera de Tango',25),
	(125,'Melipilla',26),
	(126,'Alhué',26),
	(127,'Curacaví',26),
	(128,'María Pinto',26),
	(129,'San Pedro',26),
	(130,'Isla de Maipo',27),
  	(131,'El Monte',27),
	(132,'Padre Hurtado',27),
	(133,'Peñaflor',27),
	(134,'Talagante',27),
	(135,'Codegua',28),
	(136,'Coínco',28),
	(137,'Coltauco',28),
	(138,'Doñihue',28),
	(139,'Graneros',28),
	(140,'Las Cabras',28),
	(141,'Machalí',28),
	(142,'Malloa',28),
	(143,'Mostazal',28),
	(144,'Olivar',28),
	(145,'Peumo',28),
	(146,'Pichidegua',28),
	(147,'Quinta de Tilcoco',28),
	(148,'Rancagua',28),
	(149,'Rengo',28),
	(150,'Requínoa',28),
	(151,'San Vicente de Tagua Tagua',28),
	(152,'Chépica',29),
	(153,'Chimbarongo',29),
	(154,'Lolol',29),
  	(155,'Nancagua',29),
  	(156,'Palmilla',29),
  	(157,'Peralillo',29),
	(158,'Placilla',29),
 	(159,'Pumanque',29),
	(160,'San Fernando',29),
	(161,'Santa Cruz',29),
	(162,'La Estrella',30),
	(163,'Litueche',30),
	(164,'Marchigüe',30),
	(165,'Navidad',30),
	(166,'Paredones',30),
	(167,'Pichilemu',30),
	(168,'Curicó',31),
	(169,'Hualañé',31),
	(170,'Licantén',31),
 	(171,'Molina',31),
	(172,'Rauco',31),
	(173,'Romeral',31),
	(174,'Sagrada Familia',31),
	(175,'Teno',31),
	(176,'Vichuquén',31),
	(177,'Talca',32),
	(178,'San Clemente',32),
	(179,'Pelarco',32),
	(180,'Pencahue',32),
	(181,'Maule',32),
	(182,'San Rafael',32),
	(183,'Curepto',33),
	(184,'Constitución',32),
	(185,'Empedrado',32),
	(186,'Río Claro',32),
  	(187,'Linares',33),
	(188,'San Javier',33),
	(189,'Parral',33),
	(190,'Villa Alegre',33),
	(191,'Longaví',33),
	(192,'Colbún',33),
	(193,'Retiro',33),
	(194,'Yerbas Buenas',33),
  	(195,'Cauquenes',34),
	(196,'Chanco',34),
	(197,'Pelluhue',34),
	(198,'Bulnes',35),
	(199,'Chillán',35),
	(200,'Chillán Viejo',35),
	(201,'El Carmen',35),
	(202,'Pemuco',35),
	(203,'Pinto',35),
	(204,'Quillón',35),
	(205,'San Ignacio',35),
	(206,'Yungay',35),
	(207,'Cobquecura',36),
	(208,'Coelemu',36),
	(209,'Ninhue',36),
	(210,'Portezuelo',36),
	(211,'Quirihue',36),
	(212,'Ránquil',36),
	(213,'Treguaco',36),
	(214,'San Carlos',37),
	(215,'Coihueco',37),
	(216,'San Nicolás',37),
	(217,'Ñiquén',37),
	(218,'San Fabián',37),
	(219,'Alto Biobío',38),
	(220,'Antuco',38),
	(221,'Cabrero',38),
	(222,'Laja',38),
	(223,'Los Ángeles',38),
	(224,'Mulchén',38),
	(225,'Nacimiento',38),
	(226,'Negrete',38),
	(227,'Quilaco',38),
	(228,'Quilleco',38),
	(229,'San Rosendo',38),
	(230,'Santa Bárbara',38),
	(231,'Tucapel',38),
	(232,'Yumbel',38),
	(233,'Concepción',39),
	(234,'Coronel',39),
	(235,'Chiguayante',39),
	(236,'Florida',39),
	(237,'Hualpén',39),
	(238,'Hualqui',39),
	(239,'Lota',39),
	(240,'Penco',39),
	(241,'San Pedro de La Paz',39),
	(242,'Santa Juana',39),
	(243,'Talcahuano',39),
	(244,'Tomé',39),
	(245,'Arauco',40),
	(246,'Cañete',40),
	(247,'Contulmo',40),
	(248,'Curanilahue',40),
	(249,'Lebu',40),
	(250,'Los Álamos',40),
	(251,'Tirúa',40),
	(252,'Angol',41),
	(253,'Collipulli',41),
	(254,'Curacautín',41),
	(255,'Ercilla',41),
	(256,'Lonquimay',41),
	(257,'Los Sauces',41),
	(258,'Lumaco',41),
	(259,'Purén',41),
	(260,'Renaico',41),
	(261,'Traiguén',41),
	(262,'Victoria',41),
	(263,'Temuco',42),
	(264,'Carahue',42),
	(265,'Cholchol',42),
	(266,'Cunco',42),
	(267,'Curarrehue',42),
	(268,'Freire',42),
	(269,'Galvarino',42),
	(270,'Gorbea',42),
	(271,'Lautaro',42),
	(272,'Loncoche',42),
	(273,'Melipeuco',42),
	(274,'Nueva Imperial',42),
	(275,'Padre Las Casas',42),
	(276,'Perquenco',42),
	(277,'Pitrufquén',42),
	(278,'Pucón',42),
	(279,'Saavedra',42),
	(280,'Teodoro Schmidt',42),
	(281,'Toltén',42),
	(282,'Vilcún',42),
	(283,'Villarrica',42),
	(284,'Valdivia',43),
	(285,'Corral',43),
	(286,'Lanco',43),
	(287,'Los Lagos',43),
	(288,'Máfil',43),
	(289,'Mariquina',43),
	(290,'Paillaco',43),
	(291,'Panguipulli',43),
	(292,'La Unión',44),
	(293,'Futrono',44),
	(294,'Lago Ranco',44),
	(295,'Río Bueno',44),
	(296,'Osorno',45),
	(297,'Puerto Octay',45),
	(298,'Purranque',45),
	(299,'Puyehue',45),
	(300,'Río Negro',45),
	(301,'San Juan de la Costa',45),
	(302,'San Pablo',45),
	(303,'Calbuco',46),
	(304,'Cochamó',46),
	(305,'Fresia',46),
	(306,'Frutillar',46),
	(307,'Llanquihue',46),
	(308,'Los Muermos',46),
	(309,'Maullín',46),
	(310,'Puerto Montt',46),
	(311,'Puerto Varas',46),
	(312,'Ancud',47),
	(313,'Castro',47),
	(314,'Chonchi',47),
	(315,'Curaco de Vélez',47),
	(316,'Dalcahue',47),
	(317,'Puqueldón',47),
	(318,'Queilén',47),
	(319,'Quellón',47),
	(320,'Quemchi',47),
	(321,'Quinchao',47),
	(322,'Chaitén',48),
	(323,'Futaleufú',48),
	(324,'Hualaihué',48),
	(325,'Palena',48),
	(326,'Lago Verde',49),
	(327,'Coihaique',49),
	(328,'Aysén',50),
	(329,'Cisnes',50),
	(330,'Guaitecas',50),
	(331,'Río Ibáñez',51),
	(332,'Chile Chico',51),
	(333,'Cochrane',52),
	(334,'O\'Higgins',52),
	(335,'Tortel',52),
	(336,'Natales',53),
	(337,'Torres del Paine',53),
	(338,'Laguna Blanca',54),
	(339,'Punta Arenas',54),
	(340,'Río Verde',54),
	(341,'San Gregorio',54),
	(342,'Porvenir',55),
	(343,'Primavera',55),
	(344,'Timaukel',55),
	(345,'Cabo de Hornos',56),
	(346,'Antártica',56);
    
    
    CREATE TABLE IF NOT EXISTS comprovreg (
  id int(11) NOT NULL AUTO_INCREMENT,
  comuna varchar(64) NOT NULL,
  provincia_id int(8) NOT NULL,
  region_id int(8) DEFAULT NULL,
  provincia varchar(50) DEFAULT NULL,
  region varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

INSERT INTO comprovreg (id, comuna, provincia_id, region_id, provincia, region) VALUES
	(1, 'Arica', 1, 1, 'Arica', 'Arica y Parinacota'),
	(2, 'Camarones', 1, 1, 'Arica', 'Arica y Parinacota'),
	(3, 'General Lagos', 2, 1, 'Parinacota', 'Arica y Parinacota'),
	(4, 'Putre', 2, 1, 'Parinacota', 'Arica y Parinacota'),
	(5, 'Alto Hospicio', 3, 2, 'Iquique', 'Tarapacá'),
	(6, 'Iquique', 3, 2, 'Iquique', 'Tarapacá'),
	(7, 'Camiña', 4, 2, 'El Tamarugal', 'Tarapacá'),
	(8, 'Colchane', 4, 2, 'El Tamarugal', 'Tarapacá'),
	(9, 'Huara', 4, 2, 'El Tamarugal', 'Tarapacá'),
	(10, 'Pica', 4, 2, 'El Tamarugal', 'Tarapacá'),
	(11, 'Pozo Almonte', 4, 2, 'El Tamarugal', 'Tarapacá'),
	(12, 'Tocopilla', 5, 3, 'Tocopilla', 'Antofagasta'),
	(13, 'María Elena', 5, 3, 'Tocopilla', 'Antofagasta'),
	(14, 'Calama', 6, 3, 'El Loa', 'Antofagasta'),
	(15, 'Ollague', 6, 3, 'El Loa', 'Antofagasta'),
	(16, 'San Pedro de Atacama', 6, 3, 'El Loa', 'Antofagasta'),
	(17, 'Antofagasta', 7, 3, 'Antofagasta', 'Antofagasta'),
	(18, 'Mejillones', 7, 3, 'Antofagasta', 'Antofagasta'),
	(19, 'Sierra Gorda', 7, 3, 'Antofagasta', 'Antofagasta'),
	(20, 'Taltal', 7, 3, 'Antofagasta', 'Antofagasta'),
	(21, 'Chañaral', 8, 4, 'Chañaral', 'Atacama'),
	(22, 'Diego de Almagro', 8, 4, 'Chañaral', 'Atacama'),
	(23, 'Copiapó', 9, 4, 'Copiapó', 'Atacama'),
	(24, 'Caldera', 9, 4, 'Copiapó', 'Atacama'),
	(25, 'Tierra Amarilla', 9, 4, 'Copiapó', 'Atacama'),
	(26, 'Vallenar', 10, 4, 'Huasco', 'Atacama'),
	(27, 'Alto del Carmen', 10, 4, 'Huasco', 'Atacama'),
	(28, 'Freirina', 10, 4, 'Huasco', 'Atacama'),
	(29, 'Huasco', 10, 4, 'Huasco', 'Atacama'),
	(30, 'La Serena', 11, 5, 'Elqui', 'Coquimbo'),
	(31, 'Coquimbo', 11, 5, 'Elqui', 'Coquimbo'),
	(32, 'Andacollo', 11, 5, 'Elqui', 'Coquimbo'),
	(33, 'La Higuera', 11, 5, 'Elqui', 'Coquimbo'),
	(34, 'Paihuano', 11, 5, 'Elqui', 'Coquimbo'),
	(35, 'Vicuña', 11, 5, 'Elqui', 'Coquimbo'),
	(36, 'Ovalle', 12, 5, 'Limarí', 'Coquimbo'),
	(37, 'Combarbalá', 12, 5, 'Limarí', 'Coquimbo'),
	(38, 'Monte Patria', 12, 5, 'Limarí', 'Coquimbo'),
	(39, 'Punitaqui', 12, 5, 'Limarí', 'Coquimbo'),
	(40, 'Río Hurtado', 12, 5, 'Limarí', 'Coquimbo'),
	(41, 'Illapel', 13, 5, 'Choapa', 'Coquimbo'),
	(42, 'Canela', 13, 5, 'Choapa', 'Coquimbo'),
	(43, 'Los Vilos', 13, 5, 'Choapa', 'Coquimbo'),
	(44, 'Salamanca', 13, 5, 'Choapa', 'Coquimbo'),
	(45, 'La Ligua', 14, 6, 'Petorca', 'Valparaiso'),
	(46, 'Cabildo', 14, 6, 'Petorca', 'Valparaiso'),
	(47, 'Zapallar', 14, 6, 'Petorca', 'Valparaiso'),
	(48, 'Papudo', 14, 6, 'Petorca', 'Valparaiso'),
	(49, 'Petorca', 14, 6, 'Petorca', 'Valparaiso'),
	(50, 'Los Andes', 15, 6, 'Los Andes', 'Valparaiso'),
	(51, 'San Esteban', 15, 6, 'Los Andes', 'Valparaiso'),
	(52, 'Calle Larga', 15, 6, 'Los Andes', 'Valparaiso'),
	(53, 'Rinconada', 15, 6, 'Los Andes', 'Valparaiso'),
	(54, 'San Felipe', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(55, 'Llaillay', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(56, 'Putaendo', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(57, 'Santa María', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(58, 'Catemu', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(59, 'Panquehue', 16, 6, 'San Felipe de Aconcagua', 'Valparaiso'),
	(60, 'Quillota', 17, 6, 'Quillota', 'Valparaiso'),
	(61, 'La Cruz', 17, 6, 'Quillota', 'Valparaiso'),
	(62, 'La Calera', 17, 6, 'Quillota', 'Valparaiso'),
	(63, 'Nogales', 17, 6, 'Quillota', 'Valparaiso'),
	(64, 'Hijuelas', 17, 6, 'Quillota', 'Valparaiso'),
	(65, 'Valparaíso', 18, 6, 'Valparaiso', 'Valparaiso'),
	(66, 'Viña del Mar', 18, 6, 'Valparaiso', 'Valparaiso'),
	(67, 'Concón', 18, 6, 'Valparaiso', 'Valparaiso'),
	(68, 'Quintero', 18, 6, 'Valparaiso', 'Valparaiso'),
	(69, 'Puchuncaví', 18, 6, 'Valparaiso', 'Valparaiso'),
	(70, 'Casablanca', 18, 6, 'Valparaiso', 'Valparaiso'),
	(71, 'Juan Fernández', 18, 6, 'Valparaiso', 'Valparaiso'),
	(72, 'San Antonio', 19, 6, 'San Antonio', 'Valparaiso'),
	(73, 'Cartagena', 19, 6, 'San Antonio', 'Valparaiso'),
	(74, 'El Tabo', 19, 6, 'San Antonio', 'Valparaiso'),
	(75, 'El Quisco', 19, 6, 'San Antonio', 'Valparaiso'),
	(76, 'Algarrobo', 19, 6, 'San Antonio', 'Valparaiso'),
	(77, 'Santo Domingo', 19, 6, 'San Antonio', 'Valparaiso'),
	(78, 'Isla de Pascua', 20, 6, 'Isla de Pascua', 'Valparaiso'),
	(79, 'Quilpué', 21, 6, 'Marga Marga', 'Valparaiso'),
	(80, 'Limache', 21, 6, 'Marga Marga', 'Valparaiso'),
	(81, 'Olmué', 21, 6, 'Marga Marga', 'Valparaiso'),
	(82, 'Villa Alemana', 21, 6, 'Marga Marga', 'Valparaiso'),
	(83, 'Colina', 22, 7, 'Chacabuco', 'Metropolitana de Santiago'),
	(84, 'Lampa', 22, 7, 'Chacabuco', 'Metropolitana de Santiago'),
	(85, 'Tiltil', 22, 7, 'Chacabuco', 'Metropolitana de Santiago'),
	(86, 'Santiago', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(87, 'Vitacura', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(88, 'San Ramón', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(89, 'San Miguel', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(90, 'San Joaquín', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(91, 'Renca', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(92, 'Recoleta', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(93, 'Quinta Normal', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(94, 'Quilicura', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(95, 'Pudahuel', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(96, 'Providencia', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(97, 'Peñalolén', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(98, 'Pedro Aguirre Cerda', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(99, 'Ñuñoa', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(100, 'Maipú', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(101, 'Macul', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(102, 'Lo Prado', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(103, 'Lo Espejo', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(104, 'Lo Barnechea', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(105, 'Las Condes', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(106, 'La Reina', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(107, 'La Pintana', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(108, 'La Granja', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(109, 'La Florida', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(110, 'La Cisterna', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(111, 'Independencia', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(112, 'Huechuraba', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(113, 'Estación Central', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(114, 'El Bosque', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(115, 'Conchalí', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(116, 'Cerro Navia', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(117, 'Cerrillos', 23, 7, 'Santiago', 'Metropolitana de Santiago'),
	(118, 'Puente Alto', 24, 7, 'Cordillera', 'Metropolitana de Santiago'),
	(119, 'San José de Maipo', 24, 7, 'Cordillera', 'Metropolitana de Santiago'),
	(120, 'Pirque', 24, 7, 'Cordillera', 'Metropolitana de Santiago'),
	(121, 'San Bernardo', 25, 7, 'Maipo', 'Metropolitana de Santiago'),
	(122, 'Buin', 25, 7, 'Maipo', 'Metropolitana de Santiago'),
	(123, 'Paine', 25, 7, 'Maipo', 'Metropolitana de Santiago'),
	(124, 'Calera de Tango', 25, 7, 'Maipo', 'Metropolitana de Santiago'),
	(125, 'Melipilla', 26, 7, 'Melipilla', 'Metropolitana de Santiago'),
	(126, 'Alhué', 26, 7, 'Melipilla', 'Metropolitana de Santiago'),
	(127, 'Curacaví', 26, 7, 'Melipilla', 'Metropolitana de Santiago'),
	(128, 'María Pinto', 26, 7, 'Melipilla', 'Metropolitana de Santiago'),
	(129, 'San Pedro', 26, 7, 'Melipilla', 'Metropolitana de Santiago'),
	(130, 'Isla de Maipo', 27, 7, 'Talagante', 'Metropolitana de Santiago'),
	(131, 'El Monte', 27, 7, 'Talagante', 'Metropolitana de Santiago'),
	(132, 'Padre Hurtado', 27, 7, 'Talagante', 'Metropolitana de Santiago'),
	(133, 'Peñaflor', 27, 7, 'Talagante', 'Metropolitana de Santiago'),
	(134, 'Talagante', 27, 7, 'Talagante', 'Metropolitana de Santiago'),
	(135, 'Codegua', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(136, 'Coínco', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(137, 'Coltauco', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(138, 'Doñihue', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(139, 'Graneros', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(140, 'Las Cabras', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(141, 'Machalí', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(142, 'Malloa', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(143, 'Mostazal', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(144, 'Olivar', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(145, 'Peumo', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(146, 'Pichidegua', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(147, 'Quinta de Tilcoco', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(148, 'Rancagua', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(149, 'Rengo', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(150, 'Requínoa', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(151, 'San Vicente de Tagua Tagua', 28, 8, 'Cachapoal', 'Libertador General Bernardo O\'Higgins'),
	(152, 'Chépica', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(153, 'Chimbarongo', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(154, 'Lolol', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(155, 'Nancagua', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(156, 'Palmilla', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(157, 'Peralillo', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(158, 'Placilla', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(159, 'Pumanque', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(160, 'San Fernando', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(161, 'Santa Cruz', 29, 8, 'Colchagua', 'Libertador General Bernardo O\'Higgins'),
	(162, 'La Estrella', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(163, 'Litueche', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(164, 'Marchigüe', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(165, 'Navidad', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(166, 'Paredones', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(167, 'Pichilemu', 30, 8, 'Cardenal Caro', 'Libertador General Bernardo O\'Higgins'),
	(168, 'Curicó', 31, 9, 'Curicó', 'Maule'),
	(169, 'Hualañé', 31, 9, 'Curicó', 'Maule'),
	(170, 'Licantén', 31, 9, 'Curicó', 'Maule'),
	(171, 'Molina', 31, 9, 'Curicó', 'Maule'),
	(172, 'Rauco', 31, 9, 'Curicó', 'Maule'),
	(173, 'Romeral', 31, 9, 'Curicó', 'Maule'),
	(174, 'Sagrada Familia', 31, 9, 'Curicó', 'Maule'),
	(175, 'Teno', 31, 9, 'Curicó', 'Maule'),
	(176, 'Vichuquén', 31, 9, 'Curicó', 'Maule'),
	(177, 'Talca', 32, 9, 'Talca', 'Maule'),
	(178, 'San Clemente', 32, 9, 'Talca', 'Maule'),
	(179, 'Pelarco', 32, 9, 'Talca', 'Maule'),
	(180, 'Pencahue', 32, 9, 'Talca', 'Maule'),
	(181, 'Maule', 32, 9, 'Talca', 'Maule'),
	(182, 'San Rafael', 32, 9, 'Talca', 'Maule'),
	(183, 'Curepto', 33, 9, 'Linares', 'Maule'),
	(184, 'Constitución', 32, 9, 'Talca', 'Maule'),
	(185, 'Empedrado', 32, 9, 'Talca', 'Maule'),
	(186, 'Río Claro', 32, 9, 'Talca', 'Maule'),
	(187, 'Linares', 33, 9, 'Linares', 'Maule'),
	(188, 'San Javier', 33, 9, 'Linares', 'Maule'),
	(189, 'Parral', 33, 9, 'Linares', 'Maule'),
	(190, 'Villa Alegre', 33, 9, 'Linares', 'Maule'),
	(191, 'Longaví', 33, 9, 'Linares', 'Maule'),
	(192, 'Colbún', 33, 9, 'Linares', 'Maule'),
	(193, 'Retiro', 33, 9, 'Linares', 'Maule'),
	(194, 'Yerbas Buenas', 33, 9, 'Linares', 'Maule'),
	(195, 'Cauquenes', 34, 9, 'Cauquenes', 'Maule'),
	(196, 'Chanco', 34, 9, 'Cauquenes', 'Maule'),
	(197, 'Pelluhue', 34, 9, 'Cauquenes', 'Maule'),
	(198, 'Bulnes', 35, 10, 'Diguillín', 'Ñuble'),
	(199, 'Chillán', 35, 10, 'Diguillín', 'Ñuble'),
	(200, 'Chillán Viejo', 35, 10, 'Diguillín', 'Ñuble'),
	(201, 'El Carmen', 35, 10, 'Diguillín', 'Ñuble'),
	(202, 'Pemuco', 35, 10, 'Diguillín', 'Ñuble'),
	(203, 'Pinto', 35, 10, 'Diguillín', 'Ñuble'),
	(204, 'Quillón', 35, 10, 'Diguillín', 'Ñuble'),
	(205, 'San Ignacio', 35, 10, 'Diguillín', 'Ñuble'),
	(206, 'Yungay', 35, 10, 'Diguillín', 'Ñuble'),
	(207, 'Cobquecura', 36, 10, 'Itata', 'Ñuble'),
	(208, 'Coelemu', 36, 10, 'Itata', 'Ñuble'),
	(209, 'Ninhue', 36, 10, 'Itata', 'Ñuble'),
	(210, 'Portezuelo', 36, 10, 'Itata', 'Ñuble'),
	(211, 'Quirihue', 36, 10, 'Itata', 'Ñuble'),
	(212, 'Ránquil', 36, 10, 'Itata', 'Ñuble'),
	(213, 'Treguaco', 36, 10, 'Itata', 'Ñuble'),
	(214, 'San Carlos', 37, 10, 'Punilla', 'Ñuble'),
	(215, 'Coihueco', 37, 10, 'Punilla', 'Ñuble'),
	(216, 'San Nicolás', 37, 10, 'Punilla', 'Ñuble'),
	(217, 'Ñiquén', 37, 10, 'Punilla', 'Ñuble'),
	(218, 'San Fabián', 37, 10, 'Punilla', 'Ñuble'),
	(219, 'Alto Biobío', 38, 11, 'Bio Bío', 'Biobío'),
	(220, 'Antuco', 38, 11, 'Bio Bío', 'Biobío'),
	(221, 'Cabrero', 38, 11, 'Bio Bío', 'Biobío'),
	(222, 'Laja', 38, 11, 'Bio Bío', 'Biobío'),
	(223, 'Los Ángeles', 38, 11, 'Bio Bío', 'Biobío'),
	(224, 'Mulchén', 38, 11, 'Bio Bío', 'Biobío'),
	(225, 'Nacimiento', 38, 11, 'Bio Bío', 'Biobío'),
	(226, 'Negrete', 38, 11, 'Bio Bío', 'Biobío'),
	(227, 'Quilaco', 38, 11, 'Bio Bío', 'Biobío'),
	(228, 'Quilleco', 38, 11, 'Bio Bío', 'Biobío'),
	(229, 'San Rosendo', 38, 11, 'Bio Bío', 'Biobío'),
	(230, 'Santa Bárbara', 38, 11, 'Bio Bío', 'Biobío'),
	(231, 'Tucapel', 38, 11, 'Bio Bío', 'Biobío'),
	(232, 'Yumbel', 38, 11, 'Bio Bío', 'Biobío'),
	(233, 'Concepción', 39, 11, 'Concepción', 'Biobío'),
	(234, 'Coronel', 39, 11, 'Concepción', 'Biobío'),
	(235, 'Chiguayante', 39, 11, 'Concepción', 'Biobío'),
	(236, 'Florida', 39, 11, 'Concepción', 'Biobío'),
	(237, 'Hualpén', 39, 11, 'Concepción', 'Biobío'),
	(238, 'Hualqui', 39, 11, 'Concepción', 'Biobío'),
	(239, 'Lota', 39, 11, 'Concepción', 'Biobío'),
	(240, 'Penco', 39, 11, 'Concepción', 'Biobío'),
	(241, 'San Pedro de La Paz', 39, 11, 'Concepción', 'Biobío'),
	(242, 'Santa Juana', 39, 11, 'Concepción', 'Biobío'),
	(243, 'Talcahuano', 39, 11, 'Concepción', 'Biobío'),
	(244, 'Tomé', 39, 11, 'Concepción', 'Biobío'),
	(245, 'Arauco', 40, 11, 'Arauco', 'Biobío'),
	(246, 'Cañete', 40, 11, 'Arauco', 'Biobío'),
	(247, 'Contulmo', 40, 11, 'Arauco', 'Biobío'),
	(248, 'Curanilahue', 40, 11, 'Arauco', 'Biobío'),
	(249, 'Lebu', 40, 11, 'Arauco', 'Biobío'),
	(250, 'Los Álamos', 40, 11, 'Arauco', 'Biobío'),
	(251, 'Tirúa', 40, 11, 'Arauco', 'Biobío'),
	(252, 'Angol', 41, 12, 'Malleco', 'La Araucanía'),
	(253, 'Collipulli', 41, 12, 'Malleco', 'La Araucanía'),
	(254, 'Curacautín', 41, 12, 'Malleco', 'La Araucanía'),
	(255, 'Ercilla', 41, 12, 'Malleco', 'La Araucanía'),
	(256, 'Lonquimay', 41, 12, 'Malleco', 'La Araucanía'),
	(257, 'Los Sauces', 41, 12, 'Malleco', 'La Araucanía'),
	(258, 'Lumaco', 41, 12, 'Malleco', 'La Araucanía'),
	(259, 'Purén', 41, 12, 'Malleco', 'La Araucanía'),
	(260, 'Renaico', 41, 12, 'Malleco', 'La Araucanía'),
	(261, 'Traiguén', 41, 12, 'Malleco', 'La Araucanía'),
	(262, 'Victoria', 41, 12, 'Malleco', 'La Araucanía'),
	(263, 'Temuco', 42, 12, 'Cautín', 'La Araucanía'),
	(264, 'Carahue', 42, 12, 'Cautín', 'La Araucanía'),
	(265, 'Cholchol', 42, 12, 'Cautín', 'La Araucanía'),
	(266, 'Cunco', 42, 12, 'Cautín', 'La Araucanía'),
	(267, 'Curarrehue', 42, 12, 'Cautín', 'La Araucanía'),
	(268, 'Freire', 42, 12, 'Cautín', 'La Araucanía'),
	(269, 'Galvarino', 42, 12, 'Cautín', 'La Araucanía'),
	(270, 'Gorbea', 42, 12, 'Cautín', 'La Araucanía'),
	(271, 'Lautaro', 42, 12, 'Cautín', 'La Araucanía'),
	(272, 'Loncoche', 42, 12, 'Cautín', 'La Araucanía'),
	(273, 'Melipeuco', 42, 12, 'Cautín', 'La Araucanía'),
	(274, 'Nueva Imperial', 42, 12, 'Cautín', 'La Araucanía'),
	(275, 'Padre Las Casas', 42, 12, 'Cautín', 'La Araucanía'),
	(276, 'Perquenco', 42, 12, 'Cautín', 'La Araucanía'),
	(277, 'Pitrufquén', 42, 12, 'Cautín', 'La Araucanía'),
	(278, 'Pucón', 42, 12, 'Cautín', 'La Araucanía'),
	(279, 'Saavedra', 42, 12, 'Cautín', 'La Araucanía'),
	(280, 'Teodoro Schmidt', 42, 12, 'Cautín', 'La Araucanía'),
	(281, 'Toltén', 42, 12, 'Cautín', 'La Araucanía'),
	(282, 'Vilcún', 42, 12, 'Cautín', 'La Araucanía'),
	(283, 'Villarrica', 42, 12, 'Cautín', 'La Araucanía'),
	(284, 'Valdivia', 43, 13, 'Valdivia', 'Los Ríos'),
	(285, 'Corral', 43, 13, 'Valdivia', 'Los Ríos'),
	(286, 'Lanco', 43, 13, 'Valdivia', 'Los Ríos'),
	(287, 'Los Lagos', 43, 13, 'Valdivia', 'Los Ríos'),
	(288, 'Máfil', 43, 13, 'Valdivia', 'Los Ríos'),
	(289, 'Mariquina', 43, 13, 'Valdivia', 'Los Ríos'),
	(290, 'Paillaco', 43, 13, 'Valdivia', 'Los Ríos'),
	(291, 'Panguipulli', 43, 13, 'Valdivia', 'Los Ríos'),
	(292, 'La Unión', 44, 13, 'Ranco', 'Los Ríos'),
	(293, 'Futrono', 44, 13, 'Ranco', 'Los Ríos'),
	(294, 'Lago Ranco', 44, 13, 'Ranco', 'Los Ríos'),
	(295, 'Río Bueno', 44, 13, 'Ranco', 'Los Ríos'),
	(297, 'Osorno', 45, 14, 'Osorno', 'Los Lagos'),
	(298, 'Puerto Octay', 45, 14, 'Osorno', 'Los Lagos'),
	(299, 'Purranque', 45, 14, 'Osorno', 'Los Lagos'),
	(300, 'Puyehue', 45, 14, 'Osorno', 'Los Lagos'),
	(301, 'Río Negro', 45, 14, 'Osorno', 'Los Lagos'),
	(302, 'San Juan de la Costa', 45, 14, 'Osorno', 'Los Lagos'),
	(303, 'San Pablo', 45, 14, 'Osorno', 'Los Lagos'),
	(304, 'Calbuco', 46, 14, 'Llanquihue', 'Los Lagos'),
	(305, 'Cochamó', 46, 14, 'Llanquihue', 'Los Lagos'),
	(306, 'Fresia', 46, 14, 'Llanquihue', 'Los Lagos'),
	(307, 'Frutillar', 46, 14, 'Llanquihue', 'Los Lagos'),
	(308, 'Llanquihue', 46, 14, 'Llanquihue', 'Los Lagos'),
	(309, 'Los Muermos', 46, 14, 'Llanquihue', 'Los Lagos'),
	(310, 'Maullín', 46, 14, 'Llanquihue', 'Los Lagos'),
	(311, 'Puerto Montt', 46, 14, 'Llanquihue', 'Los Lagos'),
	(312, 'Puerto Varas', 46, 14, 'Llanquihue', 'Los Lagos'),
	(313, 'Ancud', 47, 14, 'Chiloé', 'Los Lagos'),
	(314, 'Castro', 47, 14, 'Chiloé', 'Los Lagos'),
	(315, 'Chonchi', 47, 14, 'Chiloé', 'Los Lagos'),
	(316, 'Curaco de Vélez', 47, 14, 'Chiloé', 'Los Lagos'),
	(317, 'Dalcahue', 47, 14, 'Chiloé', 'Los Lagos'),
	(318, 'Puqueldón', 47, 14, 'Chiloé', 'Los Lagos'),
	(319, 'Queilén', 47, 14, 'Chiloé', 'Los Lagos'),
	(320, 'Quellón', 47, 14, 'Chiloé', 'Los Lagos'),
	(321, 'Quemchi', 47, 14, 'Chiloé', 'Los Lagos'),
	(322, 'Quinchao', 47, 14, 'Chiloé', 'Los Lagos'),
	(323, 'Chaitén', 48, 14, 'Palena', 'Los Lagos'),
	(324, 'Futaleufú', 48, 14, 'Palena', 'Los Lagos'),
	(325, 'Hualaihué', 48, 14, 'Palena', 'Los Lagos'),
	(326, 'Palena', 48, 14, 'Palena', 'Los Lagos'),
	(327, 'Lago Verde', 49, 15, 'Coyhaique', 'Aysén del General Carlos Ibáñez del Campo'),
	(328, 'Coihaique', 49, 15, 'Coyhaique', 'Aysén del General Carlos Ibáñez del Campo'),
	(329, 'Aysén', 50, 15, 'Aysén', 'Aysén del General Carlos Ibáñez del Campo'),
	(330, 'Cisnes', 50, 15, 'Aysén', 'Aysén del General Carlos Ibáñez del Campo'),
	(331, 'Guaitecas', 50, 15, 'Aysén', 'Aysén del General Carlos Ibáñez del Campo'),
	(332, 'Río Ibáñez', 51, 15, 'General Carrera', 'Aysén del General Carlos Ibáñez del Campo'),
	(333, 'Chile Chico', 51, 15, 'General Carrera', 'Aysén del General Carlos Ibáñez del Campo'),
	(334, 'Cochrane', 52, 15, 'Capitán Prat', 'Aysén del General Carlos Ibáñez del Campo'),
	(335, 'O\'Higgins', 52, 15, 'Capitán Prat', 'Aysén del General Carlos Ibáñez del Campo'),
	(336, 'Tortel', 52, 15, 'Capitán Prat', 'Aysén del General Carlos Ibáñez del Campo'),
	(337, 'Natales', 53, 16, 'Última Esperanza', 'Magallanes y de la Antártica Chilena'),
	(338, 'Torres del Paine', 53, 16, 'Última Esperanza', 'Magallanes y de la Antártica Chilena'),
	(339, 'Laguna Blanca', 54, 16, 'Magallanes', 'Magallanes y de la Antártica Chilena'),
	(340, 'Punta Arenas', 54, 16, 'Magallanes', 'Magallanes y de la Antártica Chilena'),
	(341, 'Río Verde', 54, 16, 'Magallanes', 'Magallanes y de la Antártica Chilena'),
	(342, 'San Gregorio', 54, 16, 'Magallanes', 'Magallanes y de la Antártica Chilena'),
	(343, 'Porvenir', 55, 16, 'Tierra del Fuego', 'Magallanes y de la Antártica Chilena'),
	(344, 'Primavera', 55, 16, 'Tierra del Fuego', 'Magallanes y de la Antártica Chilena'),
	(345, 'Timaukel', 55, 16, 'Tierra del Fuego', 'Magallanes y de la Antártica Chilena'),
	(346, 'Cabo de Hornos', 56, 16, 'Antártica Chilena', 'Magallanes y de la Antártica Chilena'),
	(347, 'Antártica', 56, 16, 'Antártica Chilena', 'Magallanes y de la Antártica Chilena');
    
CREATE TABLE IF NOT EXISTS candidatos (
  id int(11) NOT NULL AUTO_INCREMENT,
  candidato varchar(64) NOT NULL,
  region varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

INSERT INTO candidatos (id, candidato, region) VALUES
(1, 'candidato 1','Arica y Parinacota'),
(2, 'candidato 2','Arica y Parinacota'),
(3, 'candidato 3','Arica y Parinacota'),
(4, 'candidato 4','Tarapacá'),
(5, 'candidato 5','Tarapacá'),
(6, 'candidato 6','Tarapacá'),
(7, 'candidato 7','Antofagasta'),
(8, 'candidato 8','Antofagasta'),
(9, 'candidato 9','Antofagasta'),
(10, 'candidato 10','Atacama'),
(11, 'candidato 11','Atacama'),
(12, 'candidato 12','Coquimbo'),
(13, 'candidato 13','Coquimbo'),
(14, 'candidato 14','Coquimbo'),
(15, 'candidato 15','Valparaiso'),
(16, 'candidato 16','Valparaiso'),
(17, 'candidato 17','Valparaiso'),
(18, 'candidato 18','Valparaiso'),
(19,'candidato 19','Metropolitana de Santiago'),
(20,'candidato 20','Metropolitana de Santiago'),
(21,'candidato 21','Metropolitana de Santiago'),
(22,'candidato 22','Metropolitana de Santiago'),
(23,'candidato 23','Libertador General Bernardo O\'Higgins'),
(24,'candidato 24','Libertador General Bernardo O\'Higgins'),
(25,'candidato 25','Libertador General Bernardo O\'Higgins'),
(26, 'candidato 26','Maule'),
(27, 'candidato 27','Maule'),
(28, 'candidato 28','Ñuble'),
(29, 'candidato 29','Ñuble'),
(30, 'candidato 30','Ñuble'),
(31, 'candidato 31','Biobío'),
(32,'candidato 32','Biobío'),
(33,'candidato 33','Biobío'),
(34,'candidato 34','La Araucanía'),
(35,'candidato 35','La Araucanía'),
(36,'candidato 36','La Araucanía'),
(37,'candidato 37','La Araucanía'),
(38,'candidato 38','Los Ríos'),
(39,'candidato 39','Los Ríos'),
(40,'candidato 40','Los Ríos'),
(41,'candidato 41','Los Lagos'),
(42,'candidato 42','Los Lagos'),
(43,'candidato 43','Los Lagos'),
(44,'candidato 44','Aysén del General Carlos Ibáñez del Campo'),
(45,'candidato 45','Aysén del General Carlos Ibáñez del Campo'),
(46,'candidato 46', 'Magallanes y de la Antártica Chilena'),
(47,'candidato 47','Magallanes y de la Antártica Chilena');


CREATE TABLE IF NOT EXISTS elector (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(100) NOT NULL,
  rut varchar(50) NOT NULL,
  correo varchar(100) NOT NULL, 
  region varchar(50) DEFAULT NULL,
  comuna varchar(50) NOT NULL,
  candidato varchar(64) NOT NULL,
  informacion varchar(50) NOT NULL,  
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;