drop database if exists ciudades;

create database ciudades;
use ciudades;

create table departamentos(
    id_dep int not null primary key auto_increment,
    nombre varchar(40) not null
);

create table provincias(
    id_prov int not null primary key auto_increment,
    nombre varchar(60) not null,
    id_dep int not null,
    foreign key (id_dep) references departamentos(id_dep) on delete cascade
);

create table distritos(
    id_dis int not null primary key auto_increment,
    nombre varchar(150) not null,
    id_prov int not null,
    foreign key (id_prov) references provincias(id_prov) on delete cascade
);
-- Departamentos
insert into departamentos values (null, ' Amazonas ');
insert into departamentos values (null, ' Áncash ');
insert into departamentos values (null, ' Apurímac ');
insert into departamentos values (null, ' Arequipa ');
insert into departamentos values (null, ' Ayacucho ');
insert into departamentos values (null, ' Cajamarca ');
insert into departamentos values (null, ' Cuzco ');
insert into departamentos values (null, ' Huancavelica ');
insert into departamentos values (null, ' Huánuco ');
insert into departamentos values (null, ' Ica ');
insert into departamentos values (null, ' Junín ');
insert into departamentos values (null, ' La Libertad ');
insert into departamentos values (null, ' Lambayeque ');
insert into departamentos values (null, ' Lima ');
insert into departamentos values (null, ' Loreto ');
insert into departamentos values (null, ' Madre de Dios ');
insert into departamentos values (null, ' Moquegua ');
insert into departamentos values (null, ' Pasco ');
insert into departamentos values (null, ' Piura ');
insert into departamentos values (null, ' Puno ');
insert into departamentos values (null, ' San Martín ');
insert into departamentos values (null, ' Tacna ');
insert into departamentos values (null, ' Tumbes ');
insert into departamentos values (null, ' Ucayali ');

-- provincias
-- Amazonas

insert into provincias values (null, 'CHACHAPOYAS', 1);
insert into provincias values (null, 'BAGUA', 1);
insert into provincias values (null, 'BONGARA', 1);
insert into provincias values (null, 'CONDORCANQUI', 1);
insert into provincias values (null, 'LUYA', 1);
insert into provincias values (null, 'RODRIGUEZ DE MENDOZA', 1);
insert into provincias values (null, 'UTCUBAMBA', 1);


insert into distritos values (null, 'CHACHAPOYAS', 1);
insert into distritos values (null, 'ASUNCION', 1);
insert into distritos values (null, 'BALSAS', 1);
insert into distritos values (null, 'CHETO', 1);
insert into distritos values (null, 'CHILIQUIN', 1);
insert into distritos values (null, 'CHUQUIBAMBA', 1);
insert into distritos values (null, 'GRANADA', 1);
insert into distritos values (null, 'HUANCAS', 1);
insert into distritos values (null, 'LA JALCA', 1);
insert into distritos values (null, 'LEIMEBAMBA', 1);
insert into distritos values (null, 'LEVANTO', 1);
insert into distritos values (null, 'MAGDALENA', 1);
insert into distritos values (null, 'MARISCAL CASTILLA (Duraznopampa)', 1);
insert into distritos values (null, 'MOLINOPAMPA', 1);
insert into distritos values (null, 'MONTEVIDEO', 1);
insert into distritos values (null, 'OLLEROS', 1);
insert into distritos values (null, 'QUINJALCA', 1);
insert into distritos values (null, 'SAN FRANCISCO DE DAGUAS (Daguas)', 1);
insert into distritos values (null, 'SAN ISIDRO DE MAINO (Maíno)', 1);
insert into distritos values (null, 'SOLOCO', 1);
insert into distritos values (null, 'SONCHE (San Juan de Sonche)', 1);

insert into distritos values (null, 'PECA (Bagua)', 2);
insert into distritos values (null, 'ARAMANGO', 2);
insert into distritos values (null, 'COPALLIN', 2);
insert into distritos values (null, 'EL PARCO', 2);
insert into distritos values (null, 'IMAZA (Chiriaco)', 2);

insert into distritos values (null, 'JUMBILLA', 3);
insert into distritos values (null, 'CHISQUILLA', 3);
insert into distritos values (null, 'CHURUJA', 3);
insert into distritos values (null, 'COROSHA', 3);
insert into distritos values (null, 'CUISPES', 3);
insert into distritos values (null, 'FLORIDA', 3);
insert into distritos values (null, 'JAZAN (Pedro Ruíz Gallo)', 3);
insert into distritos values (null, 'RECTA', 3);
insert into distritos values (null, 'SAN CARLOS', 3);
insert into distritos values (null, 'SHIPASBAMBA', 3);
insert into distritos values (null, 'VALERA', 3);
insert into distritos values (null, 'YAMBRASBAMBA', 3);

insert into distritos values (null, 'NIEVA (Santa María de Nieva)', 4);
insert into distritos values (null, 'EL CENEPA (Huampami)', 4);
insert into distritos values (null, 'RIO SANTIAGO (Puerto Galilea)', 4);

insert into distritos values (null, 'LAMUD', 5);
insert into distritos values (null, 'CAMPORREDONDO', 5);
insert into distritos values (null, 'COCABAMBA', 5);
insert into distritos values (null, 'COLCAMAR', 5);
insert into distritos values (null, 'CONILA (Cohechán)', 5);
insert into distritos values (null, 'INGUILPATA', 5);
insert into distritos values (null, 'LONGUITA', 5);
insert into distritos values (null, 'LONYA CHICO', 5);
insert into distritos values (null, 'LUYA', 5);
insert into distritos values (null, 'LUYA VIEJO', 5);
insert into distritos values (null, 'MARIA', 5);
insert into distritos values (null, 'OCALLI', 5);
insert into distritos values (null, 'OCUMAL (Collonce)', 5);
insert into distritos values (null, 'PISUQUIA (Yomblón)', 5);
insert into distritos values (null, 'PROVIDENCIA', 5);
insert into distritos values (null, 'SAN CRISTOBAL (Olto)', 5);
insert into distritos values (null, 'SAN FRANCISCO DEL YESO', 5);
insert into distritos values (null, 'SAN JERONIMO (Paclas)', 5);
insert into distritos values (null, 'SAN JUAN DE LOPECANCHA', 5);
insert into distritos values (null, 'SANTA CATALINA', 5);
insert into distritos values (null, 'SANTO TOMAS', 5);
insert into distritos values (null, 'TINGO', 5);
insert into distritos values (null, 'TRITA', 5);

insert into distritos values (null, 'SAN NICOLAS (Mendoza)', 6);
insert into distritos values (null, 'CHIRIMOTO', 6);
insert into distritos values (null, 'COCHAMAL', 6);
insert into distritos values (null, 'HUAMBO', 6);
insert into distritos values (null, 'LIMABAMBA', 6);
insert into distritos values (null, 'LONGAR', 6);
insert into distritos values (null, 'MARISCAL BENAVIDES', 6);
insert into distritos values (null, 'MILPUC', 6);
insert into distritos values (null, 'OMIA', 6);
insert into distritos values (null, 'SANTA ROSA (Sta. Rosa de Huayabamba)', 6);
insert into distritos values (null, 'TOTORA', 6);
insert into distritos values (null, 'VISTA ALEGRE', 6);

insert into distritos values (null, 'BAGUA GRANDE', 7);
insert into distritos values (null, 'CAJARURO', 7);
insert into distritos values (null, 'CUMBA', 7);
insert into distritos values (null, 'EL MILAGRO', 7);
insert into distritos values (null, 'JAMALCA', 7);
insert into distritos values (null, 'LONYA GRANDE', 7);
insert into distritos values (null, 'YAMON', 7);


-- ancash
insert into provincias values (null, 'HUARAZ', 2);
insert into provincias values (null, 'AIJA', 2);
insert into provincias values (null, 'ANTONIO RAIMONDI', 2);
insert into provincias values (null, 'ASUNCION', 2);
insert into provincias values (null, 'BOLOGNESI', 2);
insert into provincias values (null, 'CARHUAZ', 2);
insert into provincias values (null, 'CARLOS F. FITZCARRALD', 2);
insert into provincias values (null, 'CASMA', 2);
insert into provincias values (null, 'CORONGO', 2);
insert into provincias values (null, 'HUARI', 2);
insert into provincias values (null, 'HUARMEY', 2);
insert into provincias values (null, 'HUAYLAS', 2);
insert into provincias values (null, 'MARISCAL LUZURIAGA', 2);
insert into provincias values (null, 'OCROS', 2);
insert into provincias values (null, 'PALLASCA', 2);
insert into provincias values (null, 'POMABAMBA', 2);
insert into provincias values (null, 'RECUAY', 2);
insert into provincias values (null, 'SANTA', 2);
insert into provincias values (null, 'SIHUAS', 2);
insert into provincias values (null, 'YUNGAY', 2);


insert into distritos values (null, 'HUARAZ', 8);
insert into distritos values (null, 'COCHABAMBA', 8);
insert into distritos values (null, 'COLCABAMBA', 8);
insert into distritos values (null, 'HUANCHAY', 8);
insert into distritos values (null, 'JANGAS', 8);
insert into distritos values (null, 'LA LIBERTAD (Cajamarquilla)', 8);
insert into distritos values (null, 'OLLEROS', 8);
insert into distritos values (null, 'PAMPAS', 8);
insert into distritos values (null, 'PARIACOTO', 8);
insert into distritos values (null, 'PIRA', 8);
insert into distritos values (null, 'TARICA', 8);
insert into distritos values (null, 'INDEPENDENCIA (Centenario)', 8);


insert into distritos values (null, 'AIJA', 9);
insert into distritos values (null, 'CORIS', 9);
insert into distritos values (null, 'HUACLLAN', 9);
insert into distritos values (null, 'LA MERCED', 9);
insert into distritos values (null, 'SUCCHA', 9);


insert into distritos values (null, 'LLAMELLIN', 10);
insert into distritos values (null, 'ACZO', 10);
insert into distritos values (null, 'CHACCHO', 10);
insert into distritos values (null, 'CHINGA', 10);
insert into distritos values (null, 'MIRGAS', 10);
insert into distritos values (null, 'SAN JUAN DE RONTOY', 10);


insert into distritos values (null, 'CHACAS', 11);
insert into distritos values (null, 'ACOCHACA', 11);


insert into distritos values (null, 'CHIQUIAN', 12);
insert into distritos values (null, 'ABELARDO PARDO LEZAMETA (Llaclla)', 12);
insert into distritos values (null, 'ANTONIO RAYMONDI (Raquia)', 12);
insert into distritos values (null, 'AQUIA', 12);
insert into distritos values (null, 'CAJACAY', 12);
insert into distritos values (null, 'CANIS', 12);
insert into distritos values (null, 'COLQUIOC (Chasquitambo)', 12);
insert into distritos values (null, 'HUALLANCA', 12);
insert into distritos values (null, 'HUASTA', 12);
insert into distritos values (null, 'HUAYLLACAYAN', 12);
insert into distritos values (null, 'LA PRIMAVERA (Gorgorillo)', 12);
insert into distritos values (null, 'MANGAS', 12);
insert into distritos values (null, 'PACLLON', 12);
insert into distritos values (null, 'S. MGEL DE CORPANQUI', 12);
insert into distritos values (null, 'TICLLOS', 12);


insert into distritos values (null, 'CARHUAZ', 13);
insert into distritos values (null, 'ACOPAMPA', 13);
insert into distritos values (null, 'AMASHCA', 13);
insert into distritos values (null, 'ANTA', 13);
insert into distritos values (null, 'ATAQUERO (Carhuac)', 13);
insert into distritos values (null, 'MARCARA', 13);
insert into distritos values (null, 'PARIAHUANCA', 13);
insert into distritos values (null, 'SAN MIGUEL DE ACO (Aco)', 13);
insert into distritos values (null, 'SHILLA', 13);
insert into distritos values (null, 'TINCO', 13);
insert into distritos values (null, 'YUNGAR', 13);


insert into distritos values (null, 'SAN LUIS', 14);
insert into distritos values (null, 'SAN NICOLAS', 14);
insert into distritos values (null, 'YAUYA', 14);


insert into distritos values (null, 'CASMA', 15);
insert into distritos values (null, 'BUENA VISTA ALTA', 15);
insert into distritos values (null, 'COMANDANTE NOEL (Pto. Casma)', 15);
insert into distritos values (null, 'YAUTAN', 15);


insert into distritos values (null, 'CORONGO', 16);
insert into distritos values (null, 'ACO', 16);
insert into distritos values (null, 'BAMBAS', 16);
insert into distritos values (null, 'CUSCA', 16);
insert into distritos values (null, 'LA PAMPA', 16);
insert into distritos values (null, 'YANAC', 16);
insert into distritos values (null, 'YUPAN', 16);


insert into distritos values (null, 'HUARI', 17);
insert into distritos values (null, 'ANRA', 17);
insert into distritos values (null, 'CAJAY', 17);
insert into distritos values (null, 'CHAVIN DE HUANTAR', 17);
insert into distritos values (null, 'HUACACHI', 17);
insert into distritos values (null, 'HUACCHIS', 17);
insert into distritos values (null, 'HUACHIS', 17);
insert into distritos values (null, 'HUANTAR', 17);
insert into distritos values (null, 'MASIN', 17);
insert into distritos values (null, 'PAUCAS', 17);
insert into distritos values (null, 'PONTO', 17);
insert into distritos values (null, 'RAHUAPAMPA', 17);
insert into distritos values (null, 'RAPAYAN', 17);
insert into distritos values (null, 'SAN MARCOS', 17);
insert into distritos values (null, 'SAN PEDRO DE CHANA (Chana)', 17);
insert into distritos values (null, 'UCO', 17);


insert into distritos values (null, 'HUARMEY', 18);
insert into distritos values (null, 'COCHAPETI', 18);
insert into distritos values (null, 'CULEBRAS (La Caleta de Culebras)', 18);
insert into distritos values (null, 'HUAYAN', 18);
insert into distritos values (null, 'MALVAS', 18);


insert into distritos values (null, 'CARAZ', 19);
insert into distritos values (null, 'HUALLANCA', 19);
insert into distritos values (null, 'HUATA', 19);
insert into distritos values (null, 'HUAYLAS', 19);
insert into distritos values (null, 'MATO', 19);
insert into distritos values (null, 'PAMPAROMAS', 19);
insert into distritos values (null, 'PUEBLO LIBRE', 19);
insert into distritos values (null, 'SANTA CRUZ (Huaripampa)', 19);
insert into distritos values (null, 'SANTO TORIBIO', 19);
insert into distritos values (null, 'YURACMARCA', 19);


insert into distritos values (null, 'PISCOBAMBA', 20);
insert into distritos values (null, 'CASCA', 20);
insert into distritos values (null, 'ELEAZAR GUZMAN BARRON', 20);
insert into distritos values (null, 'FIDEL OLIVAS ESCUDERO (Sanachgan)', 20);
insert into distritos values (null, 'LLAMA', 20);
insert into distritos values (null, 'LLUMPA', 20);
insert into distritos values (null, 'LUCMA', 20);
insert into distritos values (null, 'MUSGA', 20);


insert into distritos values (null, 'OCROS', 21);
insert into distritos values (null, 'ACAS', 21);
insert into distritos values (null, 'CAJAMARQUILLA', 21);
insert into distritos values (null, 'CARHUAPAMPA', 21);
insert into distritos values (null, 'COCHAS (Huanchay)', 21);
insert into distritos values (null, 'CONGAS', 21);
insert into distritos values (null, 'LLIPA', 21);
insert into distritos values (null, 'SAN CRISTOBAL DE RAJAN', 21);
insert into distritos values (null, 'SAN PEDRO', 21);
insert into distritos values (null, 'SANTIAGO DE CHILCAS', 21);


insert into distritos values (null, 'CABANA', 22);
insert into distritos values (null, 'BOLOGNESI', 22);
insert into distritos values (null, 'CONCHUCOS', 22);
insert into distritos values (null, 'HUACASCHUQUE', 22);
insert into distritos values (null, 'HUANDOVAL', 22);
insert into distritos values (null, 'LACABAMBA', 22);
insert into distritos values (null, 'LLAPO', 22);
insert into distritos values (null, 'PALLASCA', 22);
insert into distritos values (null, 'PAMPAS', 22);
insert into distritos values (null, 'SANTA ROSA', 22);
insert into distritos values (null, 'TAUCA', 22);


insert into distritos values (null, 'POMABAMBA', 23);
insert into distritos values (null, 'HUAYLLAN', 23);
insert into distritos values (null, 'PAROBAMBA', 23);
insert into distritos values (null, 'QUINUABAMBA', 23);


insert into distritos values (null, 'RECUAY', 24);
insert into distritos values (null, 'CATAC', 24);
insert into distritos values (null, 'COTAPARACO', 24);
insert into distritos values (null, 'HUAYLLAPAMPA', 24);
insert into distritos values (null, 'LLACLLIN', 24);
insert into distritos values (null, 'MARCA', 24);
insert into distritos values (null, 'PAMPAS CHICO', 24);
insert into distritos values (null, 'PARARIN', 24);
insert into distritos values (null, 'TAPACOCHA', 24);
insert into distritos values (null, 'TICAPAMPA', 24);


insert into distritos values (null, 'CHIMBOTE', 25);
insert into distritos values (null, 'CACERES DEL PERU', 25);
insert into distritos values (null, 'COISHCO', 25);
insert into distritos values (null, 'MACATE', 25);
insert into distritos values (null, 'MORO', 25);
insert into distritos values (null, 'NEPEÑA', 25);
insert into distritos values (null, 'SAMANCO', 25);
insert into distritos values (null, 'SANTA', 25);
insert into distritos values (null, 'NUEVO CHIMBOTE (Buenos Aires)', 25);


insert into distritos values (null, 'SIHUAS', 26);
insert into distritos values (null, 'ACOBAMBA', 26);
insert into distritos values (null, 'ALFONSO UGARTE', 26);
insert into distritos values (null, 'CASHAPAMPA', 26);
insert into distritos values (null, 'CHINGALPO', 26);
insert into distritos values (null, 'HUAYLLABAMBA', 26);
insert into distritos values (null, 'QUICHES', 26);
insert into distritos values (null, 'RAGASH', 26);
insert into distritos values (null, 'SAN JUAN', 26);
insert into distritos values (null, 'SICSIBAMBA', 26);


insert into distritos values (null, 'YUNGAY', 27);
insert into distritos values (null, 'CASCAPARA', 27);
insert into distritos values (null, 'MANCOS', 27);
insert into distritos values (null, 'MATACOTO', 27);
insert into distritos values (null, 'QUILLO', 27);
insert into distritos values (null, 'RANRAHIRCA', 27);
insert into distritos values (null, 'SHUPLUY', 27);
insert into distritos values (null, 'YANAMA', 27);

-- apurimac
 insert into provincias values (null, "Abancay", 3);
insert into distritos values (null, " ABANCAY", 28);
insert into distritos values (null, " CHACOCHE", 28);
insert into distritos values (null, " CIRCA", 28);
insert into distritos values (null, " CURAHUASI", 28);
insert into distritos values (null, " HUANIPACA", 28);
insert into distritos values (null, " LAMBRAMA", 28);
insert into distritos values (null, " PICHIRHUA", 28);
insert into distritos values (null, " SAN PEDRO DE CACHORA", 28);
insert into distritos values (null, " TAMBURCO", 28);

insert into provincias values (null, "Andahuaylas", 3);
insert into distritos values (null, " ANDAHUAYLAS", 29);
insert into distritos values (null, " ANDARAPA", 29);
insert into distritos values (null, " CHIARA", 29);
insert into distritos values (null, " HUANCARAMA", 29);
insert into distritos values (null, " HUANCARAY", 29);
insert into distritos values (null, " HUAYANA", 29);
insert into distritos values (null, " KAQUIABAMBA", 29);
insert into distritos values (null, " KISHUARA", 29);
insert into distritos values (null, " PACOBAMBA", 29);
insert into distritos values (null, " PACUCHA", 29);
insert into distritos values (null, " PAMPACHIRI", 29);
insert into distritos values (null, " POMACOCHA", 29);
insert into distritos values (null, " SAN ANTONIO DE CACHI", 29);
insert into distritos values (null, " SAN JERONIMO", 29);
insert into distritos values (null, " SANMIGUEL DE CHACCRAMPA", 29);
insert into distritos values (null, " SANTA MARIA DE CHICMO", 29);
insert into distritos values (null, " TALAVERA", 29);
insert into distritos values (null, " TUMAY HUARACA", 29);
insert into distritos values (null, " TURPO", 29);

insert into provincias values (null, "Antabamba", 3);
insert into distritos values (null, " ANTABAMBA", 30);
insert into distritos values (null, " EL ORO", 30);
insert into distritos values (null, " HUAQUIRCA", 30);
insert into distritos values (null, " JUAN ESPINOZA MEDRANO", 30);
insert into distritos values (null, " OROPESA", 30);
insert into distritos values (null, " PACHACONAS", 30);
insert into distritos values (null, " SABAINO", 30);

insert into provincias values (null, "Aymaraes", 3);
insert into distritos values (null, " CAPAYA", 31);
insert into distritos values (null, " CARAYBAMBA", 31);
insert into distritos values (null, " CHALHUANCA", 31);
insert into distritos values (null, " CHAPIMARCA", 31);
insert into distritos values (null, " COLCABAMBA", 31);
insert into distritos values (null, " COTARUSE", 31);
insert into distritos values (null, " HAUAYLLO", 31);
insert into distritos values (null, " JUSTO APU SAHUARAURA", 31);
insert into distritos values (null, " LUCRE", 31);
insert into distritos values (null, " POCOHUANCA", 31);
insert into distritos values (null, " SAN JUAN DE CHACÑA", 31);
insert into distritos values (null, " SAÑAYCA", 31);
insert into distritos values (null, " SORAYA", 31);
insert into distritos values (null, " TAPAIRIHUA", 31);
insert into distritos values (null, " TINTAY", 31);
insert into distritos values (null, " TORAYA", 31);
insert into distritos values (null, " YANACA", 31);

insert into provincias values (null, "Cotabambas", 3);
insert into distritos values (null, " CHALLHUAHUACHO", 32);
insert into distritos values (null, " COTABAMBAS", 32);
insert into distritos values (null, " COYLLURQUI", 32);
insert into distritos values (null, " HAQUIRA", 32);
insert into distritos values (null, " MARA", 32);
insert into distritos values (null, " TAMBOBAMBA", 32);

insert into provincias values (null, "Chincheros", 3);
insert into distritos values (null, " ANCO HUALLO", 33);
insert into distritos values (null, " CHINCHEROS", 33);
insert into distritos values (null, " COCHARCAS", 33);
insert into distritos values (null, " HUACCANA", 33);
insert into distritos values (null, " OCOBAMBA", 33);
insert into distritos values (null, " ONGOY", 33);
insert into distritos values (null, " RANRACANCHA", 33);
insert into distritos values (null, " URANMARCA", 33);

insert into provincias values (null, "Grau", 3);
insert into distritos values (null, " CHUQUIBAMBILLA", 34);
insert into distritos values (null, " CURASCO", 34);
insert into distritos values (null, " CURPAHUASI", 34);
insert into distritos values (null, " GAMARRA", 34);
insert into distritos values (null, " HUAYLLATI", 34);
insert into distritos values (null, " MAMARA", 34);
insert into distritos values (null, " MICAELA BASTIDAS", 34);
insert into distritos values (null, " PATAYPAMPA", 34);
insert into distritos values (null, " PROGRESO", 34);
insert into distritos values (null, " SAN ANTONIO", 34);
insert into distritos values (null, " SANTA ROSA", 34);
insert into distritos values (null, " TURPAY", 34);
insert into distritos values (null, " VILCABAMBA", 34);
insert into distritos values (null, " VIRUNDO", 34);




-- arequipa
 insert into provincias values (null, "Arequipa", 4);
insert into distritos values (null, "ALTO SELVA ALEGRE", 35);
insert into distritos values (null, "AREQUIPA", 35);
insert into distritos values (null, "CAYMA", 35);
insert into distritos values (null, "CERRO COLORADO", 35);
insert into distritos values (null, "CHARACATO", 35);
insert into distritos values (null, "CHIGUATA", 35);
insert into distritos values (null, "JACOBO HUNTER", 35);
insert into distritos values (null, "JOSE LUIS BUSTAMANTE Y RIVERO", 35);
insert into distritos values (null, "LA JOVA", 35);
insert into distritos values (null, "MARIANO MELGAR", 35);
insert into distritos values (null, "MIRAFLORES", 35);
insert into distritos values (null, "MOLLEBAYA", 35);
insert into distritos values (null, "PAUCARPATA", 35);
insert into distritos values (null, "POCSI", 35);
insert into distritos values (null, "POLOBAYA", 35);
insert into distritos values (null, "QUEQUEÑA", 35);
insert into distritos values (null, "SABANDIA ", 35);
insert into distritos values (null, "SACHACA", 35);
insert into distritos values (null, "SAN JUAN DE SIGUAS ", 35);
insert into distritos values (null, "SAN JUAN DE TARUCANI", 35);
insert into distritos values (null, "SANTA ISABEL DE SIGUAS ", 35);
insert into distritos values (null, "SANTA RITA DE SIGUAS ", 35);
insert into distritos values (null, "SOCABAYA", 35);
insert into distritos values (null, "TIABAYA", 35);
insert into distritos values (null, "UCHUMAYO", 35);
insert into distritos values (null, "VITOR ", 35);
insert into distritos values (null, "YANAHUARA", 35);
insert into distritos values (null, "YARABAMBA", 35);
insert into distritos values (null, "YURA", 35);

insert into provincias values (null, "Camaná", 4);
insert into distritos values (null, "CAMANA", 36);
insert into distritos values (null, "JOS EMARIA QUIMPER", 36);
insert into distritos values (null, "MARIANO NICOLAS VALCARCEL", 36);
insert into distritos values (null, "MARISCAL CACERES ", 36);
insert into distritos values (null, "NIOLAS E PIEROLA", 36);
insert into distritos values (null, "OCOÑA", 36);
insert into distritos values (null, "QUILCA", 36);
insert into distritos values (null, "SAMUEL PASTOR ", 36);

insert into provincias values (null, "Caravelli", 4);
insert into distritos values (null, "ACARI", 37);
insert into distritos values (null, "ATICO", 37);
insert into distritos values (null, "ATIQUIPA", 37);
insert into distritos values (null, "BELLA UNION", 37);
insert into distritos values (null, "CAHUACHO", 37);
insert into distritos values (null, "CARAVELI", 37);
insert into distritos values (null, "CHALA ", 37);
insert into distritos values (null, "CHAPARRA", 37);
insert into distritos values (null, "HUANUHUANU", 37);
insert into distritos values (null, "JAQUI", 37);
insert into distritos values (null, "LOMAS ", 37);
insert into distritos values (null, "QUICACHA", 37);
insert into distritos values (null, "YAUCA", 37);

insert into provincias values (null, "Castilla", 4);
insert into distritos values (null, "ANDAGUA ", 38);
insert into distritos values (null, "APLAO ", 38);
insert into distritos values (null, "AYO", 38);
insert into distritos values (null, "CHACHAS", 38);
insert into distritos values (null, "CHILCAYMARCA", 38);
insert into distritos values (null, "CHOCO", 38);
insert into distritos values (null, "HUANCARQUI", 38);
insert into distritos values (null, "MACHAGUAY", 38);
insert into distritos values (null, "ORCOPAMPA", 38);
insert into distritos values (null, "PAMPACOLCA", 38);
insert into distritos values (null, "TIPAN", 38);
insert into distritos values (null, "UÑON", 38);
insert into distritos values (null, "URACA", 38);
insert into distritos values (null, "VIRACO", 38);

insert into provincias values (null, "Caylloma", 4);
insert into distritos values (null, "ACHOMA", 39);
insert into distritos values (null, "CABANACONDE", 39);
insert into distritos values (null, "CALLALLI", 39);
insert into distritos values (null, "CAYLLOMA", 39);
insert into distritos values (null, "CHIVAY", 39);
insert into distritos values (null, "COPORAQUE", 39);
insert into distritos values (null, "HUAMBO", 39);
insert into distritos values (null, "HUANCA", 39);
insert into distritos values (null, "ICHUPAMPA", 39);
insert into distritos values (null, "LARI", 39);
insert into distritos values (null, "LLUTA ", 39);
insert into distritos values (null, "MACA", 39);
insert into distritos values (null, "MADRIGAL ", 39);
insert into distritos values (null, "MAJES", 39);
insert into distritos values (null, "SAN ANTONIO DE CHUCA", 39);
insert into distritos values (null, "SIBAYO", 39);
insert into distritos values (null, "TAPAY", 39);
insert into distritos values (null, "TISCO ", 39);
insert into distritos values (null, "TUTI ", 39);
insert into distritos values (null, "YANQUE ", 39);

insert into provincias values (null, "Condesuyos", 4);
insert into distritos values (null, "ANDARAY", 40);
insert into distritos values (null, "CAYARANI", 40);
insert into distritos values (null, "CHICHAS", 40);
insert into distritos values (null, "CHUQUIBAMBA", 40);
insert into distritos values (null, "IRAY", 40);
insert into distritos values (null, "RIO GRANDE", 40);
insert into distritos values (null, "SALAMANCA", 40);
insert into distritos values (null, "YANAQUIHUA", 40);

insert into provincias values (null, "Islay", 4);
insert into distritos values (null, "COCACHACRA", 41);
insert into distritos values (null, "DEAN VALDIVIA ", 41);
insert into distritos values (null, "ISLAY ", 41);
insert into distritos values (null, "MEJIA", 41);
insert into distritos values (null, "MOLLENDO", 41);
insert into distritos values (null, "PUNTA DE BOMBON ", 41);

insert into provincias values (null, "La Unión", 4);
insert into distritos values (null, "ALCA", 42);
insert into distritos values (null, "CHARCANA", 42);
insert into distritos values (null, "COTAHUASI", 42);
insert into distritos values (null, "HUAYNACOTAS", 42);
insert into distritos values (null, "PAMPAMARCA", 42);
insert into distritos values (null, "PUYCA", 42);
insert into distritos values (null, "QUECHUALLA", 42);
insert into distritos values (null, "SAYLA", 42);
insert into distritos values (null, "TAURIA", 42);
insert into distritos values (null, "TOMEPAMPA", 42);




-- ayacucho 
 insert into provincias values (null, "Cangallo", 5);
insert into distritos values (null, "CANGALLO", 43);
insert into distritos values (null, "CHUSCHI", 43);
insert into distritos values (null, "LOS MOROCHUCOS", 43);
insert into distritos values (null, "MARIA PARADO DE BELLIDO ", 43);
insert into distritos values (null, "PARAS", 43);
insert into distritos values (null, "TOTOS", 43);

insert into provincias values (null, "Huamanga", 5);
insert into distritos values (null, "ACOCRO", 44);
insert into distritos values (null, "ACOS VINCHOS", 44);
insert into distritos values (null, "AYACUCHO", 44);
insert into distritos values (null, "CARMEN ALTO", 44);
insert into distritos values (null, "CHIARA", 44);
insert into distritos values (null, "JESUS NAZARENO", 44);
insert into distritos values (null, "OCROS", 44);
insert into distritos values (null, "PACAYCASA", 44);
insert into distritos values (null, "QUINUA", 44);
insert into distritos values (null, "SAN JOSE DE TICLLAS ", 44);
insert into distritos values (null, "SAN JUAN BAUTISTA ", 44);
insert into distritos values (null, "SANTIAGO DE PISCHA", 44);
insert into distritos values (null, "SOCOS", 44);
insert into distritos values (null, "TAMBIELLO", 44);
insert into distritos values (null, "VINCHOS ", 44);

insert into provincias values (null, "Huanca Sancos", 5);
insert into distritos values (null, "CARAPO", 45);
insert into distritos values (null, "SACSAMARCA", 45);
insert into distritos values (null, "SANCOS", 45);
insert into distritos values (null, "SANTIAGO DE LUCANAMARCA ", 45);

insert into provincias values (null, "Huanta", 5);
insert into distritos values (null, "AYAHUANCO", 46);
insert into distritos values (null, "HUAMANGUILLA", 46);
insert into distritos values (null, "HUANTA", 46);
insert into distritos values (null, "IGUAIN", 46);
insert into distritos values (null, "LLOCHEGUA", 46);
insert into distritos values (null, "LURICOCHA", 46);
insert into distritos values (null, "SANTILLANA ", 46);
insert into distritos values (null, "SIVIA", 46);

insert into provincias values (null, "La Mar", 5);
insert into distritos values (null, "ANCO", 47);
insert into distritos values (null, "AYNA", 47);
insert into distritos values (null, "CHILCAS", 47);
insert into distritos values (null, "CHUNGUI", 47);
insert into distritos values (null, "LUIS CARRANZA", 47);
insert into distritos values (null, "SAN MIGUEL", 47);
insert into distritos values (null, "SANTA ROSA ", 47);
insert into distritos values (null, "TAMBO", 47);

insert into provincias values (null, "Lucanas", 5);
insert into distritos values (null, "AUCARA", 48);
insert into distritos values (null, "CABANA", 48);
insert into distritos values (null, "CARMEN SALCEDO", 48);
insert into distritos values (null, "CHAVIÑA", 48);
insert into distritos values (null, "CHIPAO", 48);
insert into distritos values (null, "HUAC-HUAS", 48);
insert into distritos values (null, "LARAMATE", 48);
insert into distritos values (null, "LEONCIO PRADO", 48);
insert into distritos values (null, "LLAUTA", 48);
insert into distritos values (null, "LUCANAS ", 48);
insert into distritos values (null, "OCAÑA", 48);
insert into distritos values (null, "OTOCA", 48);
insert into distritos values (null, "PUQUIO", 48);
insert into distritos values (null, "SAISA", 48);
insert into distritos values (null, "SAN CRISTOBAL ", 48);
insert into distritos values (null, "SAN JUAN ", 48);
insert into distritos values (null, "SAN PEDRO", 48);
insert into distritos values (null, "SAN PEDRO DE PALCO", 48);
insert into distritos values (null, "SANCOS", 48);
insert into distritos values (null, "SANTA ANA DE HUAYCACHUACHO", 48);
insert into distritos values (null, "SANTA LUCIA ", 48);

insert into provincias values (null, "Parinacochas", 5);
insert into distritos values (null, "CHUMPI", 49);
insert into distritos values (null, "CORACORA", 49);
insert into distritos values (null, "CORONEL CASTAÑEDA", 49);
insert into distritos values (null, "PACAPAUSA", 49);
insert into distritos values (null, "PpLO", 49);
insert into distritos values (null, "PUYUSCA", 49);
insert into distritos values (null, "SAN FRANCISCO DE RAVACAYCO", 49);
insert into distritos values (null, "UPAHUACHO", 49);

insert into provincias values (null, "Páucar del Sara Sara", 5);
insert into distritos values (null, "COLTA", 50);
insert into distritos values (null, "CORCpLA", 50);
insert into distritos values (null, "LAMPA", 50);
insert into distritos values (null, "MARCABAMBA", 50);
insert into distritos values (null, "OYOLO", 50);
insert into distritos values (null, "PARARCA", 50);
insert into distritos values (null, "PAUSA", 50);
insert into distritos values (null, "SAN JAVIER DE ALPABAMBA", 50);
insert into distritos values (null, "SAN JOSE DE USHUA", 50);
insert into distritos values (null, "SARA SARA ", 50);

insert into provincias values (null, "Sucre", 5);
insert into distritos values (null, "BELEN", 51);
insert into distritos values (null, "CHALCOS ", 51);
insert into distritos values (null, "CHILCAYOC", 51);
insert into distritos values (null, "HUACAÑA", 51);
insert into distritos values (null, "MORCOLLA", 51);
insert into distritos values (null, "PAICO", 51);
insert into distritos values (null, "QUEROBAMBA", 51);
insert into distritos values (null, "SAN PEDRO DE LARCAY", 51);
insert into distritos values (null, "SAN SALVADOR DE QUIJE", 51);
insert into distritos values (null, "SANTIAGO DE PAUCARAY", 51);
insert into distritos values (null, "SORAS", 51);

insert into provincias values (null, "Víctor Fajardo", 5);
insert into distritos values (null, "ALCAMENCA", 52);
insert into distritos values (null, "OPONGO", 52);
insert into distritos values (null, "ASQUIPATA", 52);
insert into distritos values (null, "CANARIA ", 52);
insert into distritos values (null, "CAYARA ", 52);
insert into distritos values (null, "COLCA", 52);
insert into distritos values (null, "HUAMANQUIQUIA", 52);
insert into distritos values (null, "HUANCAPI", 52);
insert into distritos values (null, "HUANCARAYLLA", 52);
insert into distritos values (null, "HUAYA", 52);
insert into distritos values (null, "SARHUA", 52);
insert into distritos values (null, "VILCANCHOS ", 52);
insert into distritos values (null, "Vilcas Huamán", 52);
insert into distritos values (null, "ACCOMARCA", 52);
insert into distritos values (null, "CARHUANCA", 52);
insert into distritos values (null, "CONCEPCION", 52);
insert into distritos values (null, "HUAMBALPA", 52);
insert into distritos values (null, "INDEPENDENCIA", 52);
insert into distritos values (null, "SAURAMA", 52);
insert into distritos values (null, "VILCAS HUAMAN", 52);
insert into distritos values (null, "VISCHONGO", 52);



-- Cajamarca

 insert into provincias values (null, "Cajabamba", 6);
insert into distritos values (null, "CACHACHI", 53);
insert into distritos values (null, "CAJABAMBA", 53);
insert into distritos values (null, "CONDEBAMBA", 53);
insert into distritos values (null, "SITACOCHA", 53);

insert into provincias values (null, "Cajamarca", 6);
insert into distritos values (null, "ASUNCION", 54);
insert into distritos values (null, "CAJAMARCA", 54);
insert into distritos values (null, "CHETILLA", 54);
insert into distritos values (null, "COSPAN ", 54);
insert into distritos values (null, "ENCAÑADA", 54);
insert into distritos values (null, "JESUS ", 54);
insert into distritos values (null, "LLACANORA ", 54);
insert into distritos values (null, "LOS BAÑOS DEL INCA ", 54);
insert into distritos values (null, "MAGDALENA", 54);
insert into distritos values (null, "MATARA", 54);
insert into distritos values (null, "NAMORA", 54);
insert into distritos values (null, "SAN JUAN ", 54);

insert into provincias values (null, "Celendín", 6);
insert into distritos values (null, "CELENDIN", 55);
insert into distritos values (null, "CHUMUCH", 55);
insert into distritos values (null, "CORTEGANA ", 55);
insert into distritos values (null, "HUASMIN", 55);
insert into distritos values (null, "JORGE CHAVEZ", 55);
insert into distritos values (null, "JOSE GALVEZ ", 55);
insert into distritos values (null, "LA LIBERTAD DE PALLAN ", 55);
insert into distritos values (null, "MIGUEL IGLESIAS ", 55);
insert into distritos values (null, "OXAMARCA ", 55);
insert into distritos values (null, "SOROCHUCO", 55);
insert into distritos values (null, "SUCRE", 55);
insert into distritos values (null, "UTCO", 55);

insert into provincias values (null, "Contumazá", 6);
insert into distritos values (null, "CHILETE", 56);
insert into distritos values (null, "CONTUMAZA", 56);
insert into distritos values (null, "CUPISNIQUE", 56);
insert into distritos values (null, "GUZMANGO", 56);
insert into distritos values (null, "SAN BENITO", 56);
insert into distritos values (null, "SANTA CRUZ DE TOLED", 56);
insert into distritos values (null, "TANTARICA", 56);
insert into distritos values (null, "YONAN", 56);

insert into provincias values (null, "Cutervo", 6);
insert into distritos values (null, "CALLAYUC", 57);
insert into distritos values (null, "CHOROS", 57);
insert into distritos values (null, "CUJILLO", 57);
insert into distritos values (null, "CUTERVO", 57);
insert into distritos values (null, "LA RAMDA ", 57);
insert into distritos values (null, "PIMPINGOS", 57);
insert into distritos values (null, "QUEROCOTILLO", 57);
insert into distritos values (null, "SAN ANDRES DE CUTERVO", 57);
insert into distritos values (null, "SAN JUAN DE CUTERVO ", 57);
insert into distritos values (null, "SAN LUIS DE LUCMA", 57);
insert into distritos values (null, "SANTA CRUZ ", 57);
insert into distritos values (null, "SANTO DOMINGO DE LA CAPILLA", 57);
insert into distritos values (null, "SANTO TOMAS ", 57);
insert into distritos values (null, "SOCOTA ", 57);
insert into distritos values (null, "TORIBIO CASANOVA ", 57);

insert into provincias values (null, "Chota", 6);
insert into distritos values (null, "ANGUIA ", 58);
insert into distritos values (null, "CHADIN ", 58);
insert into distritos values (null, "CHALAMARCA", 58);
insert into distritos values (null, "CHIGUIRIP", 58);
insert into distritos values (null, "CHIMBAN", 58);
insert into distritos values (null, "CHOROPAMPA", 58);
insert into distritos values (null, "CHOTA", 58);
insert into distritos values (null, "COCHABAMBA", 58);
insert into distritos values (null, "CONCHAN ", 58);
insert into distritos values (null, "HUAMBOS ", 58);
insert into distritos values (null, "LAJAS", 58);
insert into distritos values (null, "LLAMA", 58);
insert into distritos values (null, "MIRACOSTA", 58);
insert into distritos values (null, "PACCHA", 58);
insert into distritos values (null, "PION ", 58);
insert into distritos values (null, "QUEROCOTO ", 58);
insert into distritos values (null, "SAN JUAN DE LICUPIS", 58);
insert into distritos values (null, "TACABAMBA", 58);
insert into distritos values (null, "TOCMOCHE", 58);

insert into provincias values (null, "Hualgayoc", 6);
insert into distritos values (null, "BAMBAMARCA ", 59);
insert into distritos values (null, "CHUGUR", 59);
insert into distritos values (null, "HUALGAYOC ", 59);

insert into provincias values (null, "Jaén", 6);
insert into distritos values (null, "BELLAVISTA ", 60);
insert into distritos values (null, "CHONTALI", 60);
insert into distritos values (null, "COLASAY", 60);
insert into distritos values (null, "HUABAL", 60);
insert into distritos values (null, "JAEN", 60);
insert into distritos values (null, "LAS PIRIAS ", 60);
insert into distritos values (null, "POMAHUACA", 60);
insert into distritos values (null, "PUCARA ", 60);
insert into distritos values (null, "SALLIQUE ", 60);
insert into distritos values (null, "SAN FELIPE ", 60);
insert into distritos values (null, "SAN JOSE DEL ALTO ", 60);
insert into distritos values (null, "SANTA ROSA ", 60);

insert into provincias values (null, "San Ignacio", 6);
insert into distritos values (null, "CHIRINOS ", 61);
insert into distritos values (null, "HUARANGO", 61);
insert into distritos values (null, "LA COIPA ", 61);
insert into distritos values (null, "NAMBALLE", 61);
insert into distritos values (null, "SAN IGNACIO", 61);
insert into distritos values (null, "SAN JOSE DE LOURDES ", 61);
insert into distritos values (null, "TABACONAS ", 61);

insert into provincias values (null, "San Marcos", 6);
insert into distritos values (null, "CHANCAY", 62);
insert into distritos values (null, "EDUARDO VILLANUEVA", 62);
insert into distritos values (null, "GREGORIO PITA ", 62);
insert into distritos values (null, "ICHOCAN ", 62);
insert into distritos values (null, "HOSE MANUEL QUIROZ ", 62);
insert into distritos values (null, "JOSE SABOGAL ", 62);
insert into distritos values (null, "PEDRO GALVEZ ", 62);

insert into provincias values (null, "San Miguel", 6);
insert into distritos values (null, "BOLIVAR ", 63);
insert into distritos values (null, "CALQUIS", 63);
insert into distritos values (null, "CATILLUC", 63);
insert into distritos values (null, "EL PRADO", 63);
insert into distritos values (null, "LA FLORIDA ", 63);
insert into distritos values (null, "LLAPA ", 63);
insert into distritos values (null, "NANCHOC", 63);
insert into distritos values (null, "NIEPOS", 63);
insert into distritos values (null, "SAN GREGORIO ", 63);
insert into distritos values (null, "SAN MIGUEL ", 63);
insert into distritos values (null, "SAN SILVESTRE DE COCHAN ", 63);
insert into distritos values (null, "TONGOD", 63);
insert into distritos values (null, "UNION AGUA BLANCA ", 63);

insert into provincias values (null, "San Pablo", 6);
insert into distritos values (null, "SAN BERNARDINO ", 64);
insert into distritos values (null, "SAN LUIS ", 64);
insert into distritos values (null, "SAN PABLO", 64);
insert into distritos values (null, "TUMBADEN ", 64);

insert into provincias values (null, "Santa Cruz", 6);
insert into distritos values (null, "ANDABAMBA ", 65);
insert into distritos values (null, "CATACHE", 65);
insert into distritos values (null, "CHANCAYBAÑOS ", 65);
insert into distritos values (null, "LA ESPERANZA", 65);
insert into distritos values (null, "NINABAMBA.", 65);
insert into distritos values (null, "PULAN", 65);
insert into distritos values (null, "SANTA CRUZ ", 65);
insert into distritos values (null, "SAUCEPAMPA ", 65);
insert into distritos values (null, "SEXI", 65);
insert into distritos values (null, "UTICYACU", 65);
insert into distritos values (null, "YAUYUCAN", 65);




-- Cuzco
 insert into provincias values (null, "Acomayo", 7);
insert into distritos values (null, "ACOMAYO", 66);
insert into distritos values (null, "ACOPIA", 66);
insert into distritos values (null, "ACOS", 66);
insert into distritos values (null, "MOSOC LLACTA", 66);
insert into distritos values (null, "POMACANCHI", 66);
insert into distritos values (null, "RONDOCAN", 66);
insert into distritos values (null, "SANGARARA", 66);

insert into provincias values (null, "Anta", 7);
insert into distritos values (null, "ANCAHUASI", 67);
insert into distritos values (null, "ANTA", 67);
insert into distritos values (null, "CACHIMAYO", 67);
insert into distritos values (null, "CHINCHAYPUJIO", 67);
insert into distritos values (null, "HUAROCONDO", 67);
insert into distritos values (null, "LIMATAMBO", 67);
insert into distritos values (null, "MOLLEPATA", 67);
insert into distritos values (null, "PUCYURA", 67);
insert into distritos values (null, "ZURITE", 67);
insert into distritos values (null, "Calca", 67);
insert into distritos values (null, "CALCA", 67);
insert into distritos values (null, "COYA", 67);
insert into distritos values (null, "LAMAY", 67);
insert into distritos values (null, "LARES", 67);
insert into distritos values (null, "PISAC", 67);
insert into distritos values (null, "SAN SALVADOR", 67);
insert into distritos values (null, "TARAY", 67);
insert into distritos values (null, "YANATILE", 67);

insert into provincias values (null, "Canas", 7);
insert into distritos values (null, "CHECCA", 68);
insert into distritos values (null, "KUNTURKANKI", 68);
insert into distritos values (null, "LANGUI", 68);
insert into distritos values (null, "LAYO", 68);
insert into distritos values (null, "PAMPAMARCA", 68);
insert into distritos values (null, "QUEHUE", 68);
insert into distritos values (null, "TUPAC AMARU", 68);
insert into distritos values (null, "YANAOCA", 68);

insert into provincias values (null, "Canchis", 7);
insert into distritos values (null, "CHECACUPE", 69);
insert into distritos values (null, "COMBAPATA", 69);
insert into distritos values (null, "MARANGANI", 69);
insert into distritos values (null, "PITUMARCA", 69);
insert into distritos values (null, "SAN PABLO", 69);
insert into distritos values (null, "SAN PEDRO ", 69);
insert into distritos values (null, "SICUAI", 69);
insert into distritos values (null, "TINTA", 69);

insert into provincias values (null, "Cusco", 7);
insert into distritos values (null, "CCORCA", 70);
insert into distritos values (null, "CUSCO", 70);
insert into distritos values (null, "POROY", 70);
insert into distritos values (null, "SAN JERONIMO", 70);
insert into distritos values (null, "SAN SEBASTIAN", 70);
insert into distritos values (null, "SANTIAGO", 70);
insert into distritos values (null, "SAYLLA", 70);
insert into distritos values (null, "WANCHAQ", 70);

insert into provincias values (null, "Chumbivilcas", 7);
insert into distritos values (null, "CAPACMARCA", 71);
insert into distritos values (null, "CHAMACA", 71);
insert into distritos values (null, "COLQUEMARCA", 71);
insert into distritos values (null, "LIVITACA", 71);
insert into distritos values (null, "LLUSCO", 71);
insert into distritos values (null, "QUIÑOTA", 71);
insert into distritos values (null, "SANTO TOMAS ", 71);
insert into distritos values (null, "VELILLE", 71);

insert into provincias values (null, "Espinar", 7);
insert into distritos values (null, "ALTO PICHIGUA", 72);
insert into distritos values (null, "CONDOROMA", 72);
insert into distritos values (null, "COPORAQUE", 72);
insert into distritos values (null, "ESPINAR", 72);
insert into distritos values (null, "OCORURO", 72);
insert into distritos values (null, "PALLPATA", 72);
insert into distritos values (null, "PICHIGUA", 72);
insert into distritos values (null, "SUYCKUTAMBO", 72);

insert into provincias values (null, "La Convención", 7);
insert into distritos values (null, "ECHARATE", 73);
insert into distritos values (null, "HUAYOPATA", 73);
insert into distritos values (null, "KIMBIRI", 73);
insert into distritos values (null, "MARANURA", 73);
insert into distritos values (null, "OCOBAMBA", 73);
insert into distritos values (null, "PICHARI", 73);
insert into distritos values (null, "QUELLOUNO", 73);
insert into distritos values (null, "SANTA ANA", 73);
insert into distritos values (null, "SANTA TERESA", 73);
insert into distritos values (null, "VILCABAMBA", 73);

insert into provincias values (null, "Paruro", 7);
insert into distritos values (null, "ACCHA", 74);
insert into distritos values (null, "CCAPI", 74);
insert into distritos values (null, "COLCHA", 74);
insert into distritos values (null, "HUANOQUITE", 74);
insert into distritos values (null, "OMACHA", 74);
insert into distritos values (null, "PACCARITAMBO", 74);
insert into distritos values (null, "PARURO", 74);
insert into distritos values (null, "PILLPINTO", 74);
insert into distritos values (null, "YAURISQUE", 74);

insert into provincias values (null, "Paucartambo", 7);
insert into distritos values (null, "CAICAY", 75);
insert into distritos values (null, "CHALLABAMBA", 75);
insert into distritos values (null, "COLQUEPATA", 75);
insert into distritos values (null, "HUANCARANI", 75);
insert into distritos values (null, "KOSÑIPATA", 75);
insert into distritos values (null, "PAUCARTAMBO", 75);

insert into provincias values (null, "Quispicanchi", 7);
insert into distritos values (null, "ANDAHUAYLILLAS ", 76);
insert into distritos values (null, "CAMANTI", 76);
insert into distritos values (null, "CCARHUAYO", 76);
insert into distritos values (null, "CCATCA", 76);
insert into distritos values (null, "CUSIPATA", 76);
insert into distritos values (null, "HUARO", 76);
insert into distritos values (null, "LUCRE", 76);
insert into distritos values (null, "MARCAPATA", 76);
insert into distritos values (null, "OCONGATE", 76);
insert into distritos values (null, "OROPESA", 76);
insert into distritos values (null, "QUIQUIJANA", 76);
insert into distritos values (null, "URCOS", 76);

insert into provincias values (null, "Urubamba", 7);
insert into distritos values (null, "CHINCHERO", 77);
insert into distritos values (null, "HUAYLLABAMBA", 77);
insert into distritos values (null, "MACHUPICCHU", 77);
insert into distritos values (null, "MARAS", 77);
insert into distritos values (null, "OLLANTAYTAMBO", 77);
insert into distritos values (null, "URUBAMBA", 77);
insert into distritos values (null, "YUCAY", 77);



-- Huancavelica
 insert into provincias values (null, "Acobamba", 8);
insert into distritos values (null, "ACOBAMBA", 78);
insert into distritos values (null, "ANDABAMBA", 78);
insert into distritos values (null, "ANTA", 78);
insert into distritos values (null, "CAJA", 78);
insert into distritos values (null, "MARCAS", 78);
insert into distritos values (null, "PAUCARA", 78);
insert into distritos values (null, "POMACOCHA", 78);
insert into distritos values (null, "ROSARIO", 78);

insert into provincias values (null, "Angares", 8);
insert into distritos values (null, "ANCHONGA", 79);
insert into distritos values (null, "CALLANMARCA", 79);
insert into distritos values (null, "CCOCHACCASA", 79);
insert into distritos values (null, "CHINCHO", 79);
insert into distritos values (null, "CONGALLA", 79);
insert into distritos values (null, "HUANCA-HUANCA", 79);
insert into distritos values (null, "HUAYLLAY GRANDE", 79);
insert into distritos values (null, "JpCAMARCA", 79);
insert into distritos values (null, "LIRCAY", 79);
insert into distritos values (null, "SAN ANTONIO DE ANTAPARCO", 79);
insert into distritos values (null, "SANTO TOMAS DE PATA ", 79);
insert into distritos values (null, "SECCLLA", 79);

insert into provincias values (null, "Castrovirreyna", 8);
insert into distritos values (null, "ARMA", 80);
insert into distritos values (null, "AURAHUA", 80);
insert into distritos values (null, "CAPILLAS", 80);
insert into distritos values (null, "CASTROVIRREYNA", 80);
insert into distritos values (null, "CHUPAMARCA", 80);
insert into distritos values (null, "COCAS", 80);
insert into distritos values (null, "HUACHOS", 80);
insert into distritos values (null, "HUAMATAMBO", 80);
insert into distritos values (null, "MOLLEPAMPA", 80);
insert into distritos values (null, "SAN JUAN", 80);
insert into distritos values (null, "SANTA ANA ", 80);
insert into distritos values (null, "TANTARA ", 80);
insert into distritos values (null, "TICRAPO", 80);

insert into provincias values (null, "Churcampa", 8);
insert into distritos values (null, "ANCO", 81);
insert into distritos values (null, "CHINCHIHUASI", 81);
insert into distritos values (null, "CHURCAMPA", 81);
insert into distritos values (null, "EL CARMEN", 81);
insert into distritos values (null, "LA MERCED", 81);
insert into distritos values (null, "LOCROJA", 81);
insert into distritos values (null, "PACHAMARCA", 81);
insert into distritos values (null, "PAUCARBAMBA", 81);
insert into distritos values (null, "SAN MIGUEL DE MAYOCC", 81);
insert into distritos values (null, "SAN PEDRO DE CORIS ", 81);

insert into provincias values (null, "Huancavelica", 8);
insert into distritos values (null, "ACOBAMBILLA", 82);
insert into distritos values (null, "ACORIA", 82);
insert into distritos values (null, "ASCENSION", 82);
insert into distritos values (null, "CONAYCA", 82);
insert into distritos values (null, "CUENCA", 82);
insert into distritos values (null, "HUACHOCOLPA", 82);
insert into distritos values (null, "HUANCAVELICA", 82);
insert into distritos values (null, "HUANDO", 82);
insert into distritos values (null, "HUAYLLAHUARA", 82);
insert into distritos values (null, "IZCUCHACA", 82);
insert into distritos values (null, "LARIA", 82);
insert into distritos values (null, "MANTA", 82);
insert into distritos values (null, "MARISCAL CACERES", 82);
insert into distritos values (null, "MOYA", 82);
insert into distritos values (null, "NUEVO OCCORO", 82);
insert into distritos values (null, "PALCA", 82);
insert into distritos values (null, "PILCHACA", 82);
insert into distritos values (null, "VILCA", 82);
insert into distritos values (null, "YApI", 82);

insert into provincias values (null, "Huaytará", 8);
insert into distritos values (null, "AYAVI", 83);
insert into distritos values (null, "CORDOVA", 83);
insert into distritos values (null, "HUAYACUNDO ARMA ", 83);
insert into distritos values (null, "HUAYTARA", 83);
insert into distritos values (null, "LARAMARCA", 83);
insert into distritos values (null, "OCOYO", 83);
insert into distritos values (null, "PILPICHACA", 83);
insert into distritos values (null, "QUERCO", 83);
insert into distritos values (null, "QUITO-ARMA", 83);
insert into distritos values (null, "SAN ANTONIO DE CUSICANCHA", 83);
insert into distritos values (null, "SAN FRANCISCO DE SANGAYAICO ", 83);
insert into distritos values (null, "SAN ISIDRO ", 83);
insert into distritos values (null, "SANTIAGO DE CHOCORVOS ", 83);
insert into distritos values (null, "SANTIAGO DE QUIRAHUARA", 83);
insert into distritos values (null, "SANTO DOMINGO DE CAPILLAS", 83);
insert into distritos values (null, "TAMBO", 83);

insert into provincias values (null, "Tayacaja", 8);
insert into distritos values (null, "ACOSTAMBO", 84);
insert into distritos values (null, "ACRAQUIA", 84);
insert into distritos values (null, "AHUAYCHA", 84);
insert into distritos values (null, "COLCABAMBA", 84);
insert into distritos values (null, "DANIEL HERNANDEZ", 84);
insert into distritos values (null, "HUACHOCOLPA", 84);
insert into distritos values (null, "HUARIBAMBA", 84);
insert into distritos values (null, "ÑAHUIMPUQUIO", 84);
insert into distritos values (null, "PAMPAS", 84);
insert into distritos values (null, "PAZOS", 84);
insert into distritos values (null, "QUISHUAR", 84);
insert into distritos values (null, "SALCABAMBA", 84);
insert into distritos values (null, "SALCAHUASI", 84);
insert into distritos values (null, "SAN MARCOS DE ROCCHAC", 84);
insert into distritos values (null, "SURCUBAMBIA", 84);


-- Huánuco

 insert into provincias values (null, "Ambo", 9);
insert into distritos values (null, "AMBO", 85);
insert into distritos values (null, "CAYNA", 85);
insert into distritos values (null, "COLPAS", 85);
insert into distritos values (null, "CONCHAMARCA", 85);
insert into distritos values (null, "HUACAR", 85);
insert into distritos values (null, "SAN FRANCISCO", 85);
insert into distritos values (null, "SAN RAFAEL", 85);
insert into distritos values (null, "TOMAY KICHWA", 85);

insert into provincias values (null, "Dos de Mayo", 9);
insert into distritos values (null, "CHUQUIS", 86);
insert into distritos values (null, "LA UNION ", 86);
insert into distritos values (null, "MARIAS ", 86);
insert into distritos values (null, "PACHAS ", 86);
insert into distritos values (null, "QUIVILLA", 86);
insert into distritos values (null, "RIPAN ", 86);
insert into distritos values (null, "SHUNQUI ", 86);
insert into distritos values (null, "SILLAPATA", 86);
insert into distritos values (null, "YANAS", 86);

insert into provincias values (null, "Huacaybamba", 9);
insert into distritos values (null, "CANCHABAMBA", 87);
insert into distritos values (null, "COCHABAMBA", 87);
insert into distritos values (null, "HUACAYBAMBA", 87);
insert into distritos values (null, "PINRA", 87);

insert into provincias values (null, "Huamalies", 9);
insert into distritos values (null, "ARANCAY", 88);
insert into distritos values (null, "CHAVIN DE PARIARCA", 88);
insert into distritos values (null, "JACAS GRANDE", 88);
insert into distritos values (null, "JIRCAN", 88);
insert into distritos values (null, "LLATA", 88);
insert into distritos values (null, "MIRAFLORES ", 88);
insert into distritos values (null, "MONZON ", 88);
insert into distritos values (null, "PUNCHAO", 88);
insert into distritos values (null, "PUÑOS", 88);
insert into distritos values (null, "SINGA", 88);
insert into distritos values (null, "TANTAMAYO ", 88);

insert into provincias values (null, "Huánuco", 9);
insert into distritos values (null, "AMARILIS", 89);
insert into distritos values (null, "CHINCHAO", 89);
insert into distritos values (null, "CHURUBAMBA", 89);
insert into distritos values (null, "HUANUCO", 89);
insert into distritos values (null, "MARGOS", 89);
insert into distritos values (null, "PILLCO MARCA", 89);
insert into distritos values (null, "QUISQUI ", 89);
insert into distritos values (null, "SAN FRANCISCO DE CAYRAN", 89);
insert into distritos values (null, "SAN PEDRO DE CHApAN ", 89);
insert into distritos values (null, "SANTA MARIA DEL VALLE", 89);
insert into distritos values (null, "YARUMAYO", 89);

insert into provincias values (null, "Lauricocha", 9);
insert into distritos values (null, "BAÑOS ", 90);
insert into distritos values (null, "JESUS", 90);
insert into distritos values (null, "JIVIA", 90);
insert into distritos values (null, "QUEROPALCA", 90);
insert into distritos values (null, "RONDOS ", 90);
insert into distritos values (null, "SAN FRANCISCO DE ASIS", 90);
insert into distritos values (null, "SAN MIGUEL DE CAURI ", 90);

insert into provincias values (null, "Leoncio Prado", 9);
insert into distritos values (null, "DANIEL ALOMIAS ROBLES", 91);
insert into distritos values (null, "HERMILIO VALDIZAN", 91);
insert into distritos values (null, "JOSE CRESPO Y CASTILLO ", 91);
insert into distritos values (null, "LUYANDO ", 91);
insert into distritos values (null, "MARIANO DAMASO BERAUN", 91);
insert into distritos values (null, "RUPA-RUPA", 91);

insert into provincias values (null, "Marañón", 9);
insert into distritos values (null, "CHOLON ", 92);
insert into distritos values (null, "HUACRACHUCO", 92);
insert into distritos values (null, "SAN BUENAVENTURA", 92);

insert into provincias values (null, "Pachitea", 9);
insert into distritos values (null, "CHAGLLA", 93);
insert into distritos values (null, "MOLINO", 93);
insert into distritos values (null, "PANAO", 93);
insert into distritos values (null, "UMARI", 93);

insert into provincias values (null, "Puerto Inca", 9);
insert into distritos values (null, "CODO DEL POZUZO", 94);
insert into distritos values (null, "HONORIA", 94);
insert into distritos values (null, "PUERTO INCA ", 94);
insert into distritos values (null, "TOURNAVISTA", 94);
insert into distritos values (null, "YUYAPICHIS ", 94);

insert into provincias values (null, "Yarowilca", 9);
insert into distritos values (null, "APARICIO POMARES", 95);
insert into distritos values (null, "CAHUAC", 95);
insert into distritos values (null, "CHACABAMBA", 95);
insert into distritos values (null, "CHAVINILLO", 95);
insert into distritos values (null, "CHORAS", 95);
insert into distritos values (null, "JACAS CHICO", 95);
insert into distritos values (null, "OBAS", 95);



-- Ica
 insert into provincias values (null, "Chincha", 10);
insert into distritos values (null, "ALTO LARAN", 96);
insert into distritos values (null, "CHAVIN ", 96);
insert into distritos values (null, "CHINCHA ALTA", 96);
insert into distritos values (null, "CHINCHA BAJA", 96);
insert into distritos values (null, "EL CARMEN", 96);
insert into distritos values (null, "GROCIO PRADO", 96);
insert into distritos values (null, "PUEBLO NUEVO ", 96);
insert into distritos values (null, "SAN JUAN DE YANAC ", 96);
insert into distritos values (null, "SAN PEDRO DE HUACARPANA", 96);
insert into distritos values (null, "SUNAMPE", 96);
insert into distritos values (null, "TAMBO DE MORA", 96);

insert into provincias values (null, "Ica", 10);
insert into distritos values (null, "ICA ", 97);
insert into distritos values (null, "LA TINGUIÑA", 97);
insert into distritos values (null, "LOS AQUIJES", 97);
insert into distritos values (null, "OCUCAJE", 97);
insert into distritos values (null, "PACHACUTEC", 97);
insert into distritos values (null, "PARCONA", 97);
insert into distritos values (null, "PUEBLO NUEVO", 97);
insert into distritos values (null, "SALAS", 97);
insert into distritos values (null, "SAN JOSE DE LOS MOLINOS ", 97);
insert into distritos values (null, "SAN JUAN BAUTISTA", 97);
insert into distritos values (null, "SANTIAGO ", 97);
insert into distritos values (null, "SUBTANJALLA", 97);
insert into distritos values (null, "TATE", 97);
insert into distritos values (null, "YAUCA DEL ROSARIO ", 97);

insert into provincias values (null, "Nazca", 10);
insert into distritos values (null, "CHANGUILLO", 98);
insert into distritos values (null, "EL INGENIO", 98);
insert into distritos values (null, "MARCONA", 98);
insert into distritos values (null, "NAZCA", 98);
insert into distritos values (null, "VISTA ALEGRE", 98);

insert into provincias values (null, "Palpa", 10);
insert into distritos values (null, "LLIPATA", 99);
insert into distritos values (null, "PALPA", 99);
insert into distritos values (null, "RIO GRANDE ", 99);
insert into distritos values (null, "SANTA CRUZ ", 99);
insert into distritos values (null, "TIBILLO", 99);

insert into provincias values (null, "Pisco", 10);
insert into distritos values (null, "HUANCANO", 100);
insert into distritos values (null, "HUMAY", 100);
insert into distritos values (null, "INDEPENDENCIA", 100);
insert into distritos values (null, "PARACAS", 100);
insert into distritos values (null, "PISCO", 100);
insert into distritos values (null, "SAN ANDRES", 100);
insert into distritos values (null, "SAN CLEMENTE", 100);
insert into distritos values (null, "TUPAC AMARU INCA", 100);



-- Junín
 insert into provincias values (null, "Junín", 11);
insert into distritos values (null, "JUNIN", 101);
insert into distritos values (null, "CARHUAMAYO", 101);
insert into distritos values (null, "ONDORES", 101);
insert into distritos values (null, "ULCUMAYO", 101);

insert into provincias values (null, "Huancayo", 11);
insert into distritos values (null, "HUANCAYO", 102);
insert into distritos values (null, "CARHUACALLANGA", 102);
insert into distritos values (null, "CHACAPAMPA", 102);
insert into distritos values (null, "CHICCHE", 102);
insert into distritos values (null, "CHILCA", 102);
insert into distritos values (null, "CHONGOS ALTO", 102);
insert into distritos values (null, "CHUPURO", 102);
insert into distritos values (null, "COLCA", 102);
insert into distritos values (null, "CULLHUAS", 102);
insert into distritos values (null, "EL TAMBO", 102);
insert into distritos values (null, "HUACRAPUQUIO", 102);
insert into distritos values (null, "HUALHUAS", 102);
insert into distritos values (null, "HUANCAN", 102);
insert into distritos values (null, "HUASICANCHA", 102);
insert into distritos values (null, "HUAYUCACHI", 102);
insert into distritos values (null, "INGENIO", 102);
insert into distritos values (null, "PARIAHUANCA", 102);
insert into distritos values (null, "PILCOMAYO", 102);
insert into distritos values (null, "PUCARA", 102);
insert into distritos values (null, "QUICHUAY", 102);
insert into distritos values (null, "QUILCAS", 102);
insert into distritos values (null, "SAN AGUSTIN", 102);
insert into distritos values (null, "SAN JERONIMO DE TUNAN", 102);
insert into distritos values (null, "SAÑO (San Pedro de Saño)", 102);
insert into distritos values (null, "SANTO DOMINGO DE ACOBAMBA", 102);
insert into distritos values (null, "SAPALLANGA", 102);
insert into distritos values (null, "SICAYA", 102);
insert into distritos values (null, "VIQUES", 102);

insert into provincias values (null, "Tarma", 11);
insert into distritos values (null, "TARMA", 103);
insert into distritos values (null, "ACOBAMBA", 103);
insert into distritos values (null, "HUARICOLCA", 103);
insert into distritos values (null, "HUASAHUASI", 103);
insert into distritos values (null, "LA UNION (Leticia)", 103);
insert into distritos values (null, "PALCA", 103);
insert into distritos values (null, "PALCAMAYO", 103);
insert into distritos values (null, "SAN PEDRO DE CAJAS", 103);
insert into distritos values (null, "TAPO", 103);

insert into provincias values (null, "Chanchamayo", 11);
insert into distritos values (null, "CHANCHAMAYO (La Merced)", 104);
insert into distritos values (null, "PERENE", 104);
insert into distritos values (null, "PICHANAQUI (Bajo Pichanaqui)", 104);
insert into distritos values (null, "SAN LUIS DE SHUARO", 104);
insert into distritos values (null, "SAN RAMON", 104);
insert into distritos values (null, "VITOC (Pucará)", 104);

insert into provincias values (null, "Jauja", 11);
insert into distritos values (null, "JAUJA", 105);
insert into distritos values (null, "ACOLLA", 105);
insert into distritos values (null, "APATA", 105);
insert into distritos values (null, "ATAURA", 105);
insert into distritos values (null, "CANCHAYLLO", 105);
insert into distritos values (null, "CURICACA (El Rosario)", 105);
insert into distritos values (null, "EL MANTARO (Pucucho)", 105);
insert into distritos values (null, "HUAMALI", 105);
insert into distritos values (null, "HUARIPAMPA", 105);
insert into distritos values (null, "HUERTAS", 105);
insert into distritos values (null, "JANJAILLO", 105);
insert into distritos values (null, "JULCAN", 105);
insert into distritos values (null, "LEONOR ORDOÑEZ (Huancani)", 105);
insert into distritos values (null, "LLOCLLAPAMPA", 105);
insert into distritos values (null, "MARCO", 105);
insert into distritos values (null, "MASMA", 105);
insert into distritos values (null, "MASMA CHICCHE", 105);
insert into distritos values (null, "MOLINOS", 105);
insert into distritos values (null, "MONOBAMBA", 105);
insert into distritos values (null, "MUQUI", 105);
insert into distritos values (null, "MUQUIYAUYO", 105);
insert into distritos values (null, "PACA", 105);
insert into distritos values (null, "PACCHA", 105);
insert into distritos values (null, "PANCAN", 105);
insert into distritos values (null, "PARCO", 105);
insert into distritos values (null, "POMACANCHA", 105);
insert into distritos values (null, "RICRAN", 105);
insert into distritos values (null, "SAN LORENZO", 105);
insert into distritos values (null, "SAN PEDRO DE CHUNAN", 105);
insert into distritos values (null, "SAUSA", 105);
insert into distritos values (null, "SINCOS", 105);
insert into distritos values (null, "TUNAN MARCA (Concho)", 105);
insert into distritos values (null, "YAULI", 105);
insert into distritos values (null, "YAUYOS", 105);

insert into provincias values (null, "Yauli", 11);
insert into distritos values (null, "LA OROYA", 106);
insert into distritos values (null, "CHACAPALPA", 106);
insert into distritos values (null, "HUAY-HUAY", 106);
insert into distritos values (null, "MARCAPOMACOCHA", 106);
insert into distritos values (null, "MOROCOCHA", 106);
insert into distritos values (null, "PACCHA", 106);
insert into distritos values (null, "SANTA BARBARA DE CARHUACAYAN", 106);
insert into distritos values (null, "SANTA ROSA DE SACCO", 106);
insert into distritos values (null, "SUITUCANCHA", 106);
insert into distritos values (null, "YAULI", 106);

insert into provincias values (null, "Concepción", 11);
insert into distritos values (null, "CONCEPCION", 107);
insert into distritos values (null, "ACO", 107);
insert into distritos values (null, "ANDAMARCA", 107);
insert into distritos values (null, "CHAMBARA", 107);
insert into distritos values (null, "COCHAS", 107);
insert into distritos values (null, "COMAS", 107);
insert into distritos values (null, "HEROINAS TOLEDO (San Antonio de Ocopa)", 107);
insert into distritos values (null, "MANZANARES (San Miguel)", 107);
insert into distritos values (null, "MARISCAL CASTILLA (Mucllo)", 107);
insert into distritos values (null, "MATAHUASI", 107);
insert into distritos values (null, "MITO", 107);
insert into distritos values (null, "NUEVE DE JULIO (Santo Domingo del Prado)", 107);
insert into distritos values (null, "ORCOTUNA", 107);
insert into distritos values (null, "SAN JOSE DE QUERO", 107);
insert into distritos values (null, "SANTA ROSA DE OCOPA (Santa Rosa)", 107);

insert into provincias values (null, "Chupaca", 11);
insert into distritos values (null, "CHUPACA", 108);
insert into distritos values (null, "AHUAC", 108);
insert into distritos values (null, "CHONGOS BAJO", 108);
insert into distritos values (null, "HUACHAC", 108);
insert into distritos values (null, "HUAMANCACA CHICO", 108);
insert into distritos values (null, "SAN JUAN DE YSCOS (Yscos)", 108);
insert into distritos values (null, "SAN JUAN DE JARPA (Jarpa)", 108);
insert into distritos values (null, "TRES DE DICIEMBRE", 108);
insert into distritos values (null, "YANACANCHA", 108);

insert into provincias values (null, "Satipo", 11);
insert into distritos values (null, "SATIPO", 109);
insert into distritos values (null, "COVIRIALI", 109);
insert into distritos values (null, "LLAYLLA", 109);
insert into distritos values (null, "MAZAMARI", 109);
insert into distritos values (null, "PAMPA HERMOSA (Mariposa)", 109);
insert into distritos values (null, "PANGOA (San Martín de Pangoa)", 109);
insert into distritos values (null, "RIO NEGRO", 109);





-- La Libertad

 insert into provincias values (null, "Ascope", 12);
insert into distritos values (null, "ASCOPE", 110);
insert into distritos values (null, "CHICAMA", 110);
insert into distritos values (null, "CHOCOPE", 110);
insert into distritos values (null, "MAGDALENA DE CAO", 110);
insert into distritos values (null, "PAIJAN", 110);
insert into distritos values (null, "RAZURI (Puerto de Malabrigo)", 110);
insert into distritos values (null, "SANTIAGO DE CAO", 110);
insert into distritos values (null, "CASA GRANDE", 110);

insert into provincias values (null, "Sánchez Carrión", 12);
insert into distritos values (null, "HUAMACHUCO", 111);
insert into distritos values (null, "CHUGAY", 111);
insert into distritos values (null, "COCHORCO (Aricapampa)", 111);
insert into distritos values (null, "CURGOS", 111);
insert into distritos values (null, "MARCABAL", 111);
insert into distritos values (null, "SANAGORAN", 111);
insert into distritos values (null, "SARIN", 111);
insert into distritos values (null, "SARTIMBAMBA", 111);

insert into provincias values (null, "Santiago de Chuco", 12);
insert into distritos values (null, "SANTIAGO DE CHUCO", 112);
insert into distritos values (null, "ANGASMARCA", 112);
insert into distritos values (null, "CACHICADAN", 112);
insert into distritos values (null, "MOLLEBAMBA", 112);
insert into distritos values (null, "MOLLEPATA", 112);
insert into distritos values (null, "QUIRUVILCA", 112);
insert into distritos values (null, "SANTA CRUZ DE CHUCA", 112);
insert into distritos values (null, "SITABAMBA", 112);

insert into provincias values (null, "Chepén", 12);
insert into distritos values (null, "CHEPEN", 113);
insert into distritos values (null, "PACANGA", 113);
insert into distritos values (null, "PUEBLO NUEVO", 113);

insert into provincias values (null, "Otuzco", 12);
insert into distritos values (null, "OTUZCO", 114);
insert into distritos values (null, "AGALLPAMPA", 114);
insert into distritos values (null, "CHARAT", 114);
insert into distritos values (null, "HUARANCHAL", 114);
insert into distritos values (null, "LA CUESTA", 114);
insert into distritos values (null, "MACHE", 114);
insert into distritos values (null, "PARANDAY", 114);
insert into distritos values (null, "SALPO", 114);
insert into distritos values (null, "SINSICAP", 114);
insert into distritos values (null, "USQUIL", 114);

insert into provincias values (null, "Pacasmayo", 12);
insert into distritos values (null, "SAN PEDRO DE LLOC", 115);
insert into distritos values (null, "GUADALUPE", 115);
insert into distritos values (null, "JEQUETEPEQUE", 115);
insert into distritos values (null, "PACASMAYO", 115);
insert into distritos values (null, "SAN JOSE", 115);

insert into provincias values (null, "Trujillo", 12);
insert into distritos values (null, "TRUJILLO", 116);
insert into distritos values (null, "EL PORVENIR", 116);
insert into distritos values (null, "FLORENCIA DE MORA", 116);
insert into distritos values (null, "HUANCHACO", 116);
insert into distritos values (null, "LA ESPERANZA", 116);
insert into distritos values (null, "LAREDO", 116);
insert into distritos values (null, "MOCHE", 116);
insert into distritos values (null, "POROTO", 116);
insert into distritos values (null, "SALAVERRY", 116);
insert into distritos values (null, "SIMBAL", 116);
insert into distritos values (null, "VICTOR LARCO HERRERA (Buenos Aires)", 116);

insert into provincias values (null, "Bolivar", 12);
insert into distritos values (null, "BOLIVAR", 117);
insert into distritos values (null, "BAMBAMARCA", 117);
insert into distritos values (null, "CONDORMARCA", 117);
insert into distritos values (null, "LONGOTEA", 117);
insert into distritos values (null, "UCHUMARCA", 117);
insert into distritos values (null, "UCUNCHA", 117);

insert into provincias values (null, "Julcan", 12);
insert into distritos values (null, "JULCAN", 118);
insert into distritos values (null, "CALAMARCA", 118);
insert into distritos values (null, "CARABAMBA", 118);
insert into distritos values (null, "HUASO", 118);

insert into provincias values (null, "Gran Chimu", 12);
insert into distritos values (null, "CASCAS", 119);
insert into distritos values (null, "LUCMA", 119);
insert into distritos values (null, "MARMOT", 119);
insert into distritos values (null, "SAYAPULLO", 119);

insert into provincias values (null, "Viru", 12);
insert into distritos values (null, "VIRU", 120);
insert into distritos values (null, "CHAO", 120);
insert into distritos values (null, "GUADALUPITO", 120);

insert into provincias values (null, "Pataz", 12);
insert into distritos values (null, "TAYABAMBA", 121);
insert into distritos values (null, "BULDIBUYO", 121);
insert into distritos values (null, "CHILLIA", 121);
insert into distritos values (null, "HUANCASPATA", 121);
insert into distritos values (null, "HUAYLILLAS", 121);
insert into distritos values (null, "HUAYO", 121);
insert into distritos values (null, "ONGON", 121);
insert into distritos values (null, "PARCOY", 121);
insert into distritos values (null, "PATAZ", 121);
insert into distritos values (null, "PIAS", 121);
insert into distritos values (null, "SANTIAGO DE CHALLAS (Challas)", 121);
insert into distritos values (null, "TAURIJA", 121);




-- Lambayeque
 insert into provincias values (null, "Chiclayo", 13);
insert into distritos values (null, "CAYALTI ", 122);
insert into distritos values (null, "CHICLAYO", 122);
insert into distritos values (null, "CHONGOYAPE", 122);
insert into distritos values (null, "ETEN", 122);
insert into distritos values (null, "ETEN PUERTO", 122);
insert into distritos values (null, "JOSE LEONARDO ORTIZ", 122);
insert into distritos values (null, "LA VICTORIA", 122);
insert into distritos values (null, "LAGUNAS ", 122);
insert into distritos values (null, "MOSEFU", 122);
insert into distritos values (null, "NUEVA ARICA", 122);
insert into distritos values (null, "OYOTUN", 122);
insert into distritos values (null, "PATAPO", 122);
insert into distritos values (null, "PICSI", 122);
insert into distritos values (null, "PIMENTEL", 122);
insert into distritos values (null, "POMALCA", 122);
insert into distritos values (null, "PUCALA", 122);
insert into distritos values (null, "REQUE ", 122);
insert into distritos values (null, "SAÑA", 122);
insert into distritos values (null, "SANTA ROSA ", 122);
insert into distritos values (null, "TUMAN", 122);

insert into provincias values (null, "Ferreñafe", 13);
insert into distritos values (null, "CAÑARIS", 123);
insert into distritos values (null, "FERREÑAFE", 123);
insert into distritos values (null, "INCAHUASI", 123);
insert into distritos values (null, "MANUEL ANTONIO MESONES MURO ", 123);
insert into distritos values (null, "PITIPO", 123);
insert into distritos values (null, "PUEBLO NUEVO ", 123);

insert into provincias values (null, "Lambayeque", 13);
insert into distritos values (null, "CHOCHOPE", 124);
insert into distritos values (null, "ILLIMO", 124);
insert into distritos values (null, "JAYANCA", 124);
insert into distritos values (null, "LAMBAYEQUE", 124);
insert into distritos values (null, "MOCHUMI", 124);
insert into distritos values (null, "MORROPE", 124);
insert into distritos values (null, "MOTUPE", 124);
insert into distritos values (null, "OLMOS", 124);
insert into distritos values (null, "PACORA", 124);
insert into distritos values (null, "SALAS", 124);
insert into distritos values (null, "SAN JOSE", 124);





-- Lima (departamento y provincia)²

 insert into provincias values (null, "Barranca", 14);
insert into distritos values (null, "BARRANCA", 125);
insert into distritos values (null, "PARAMONGA", 125);
insert into distritos values (null, "PATIVILCA", 125);
insert into distritos values (null, "SUPE", 125);
insert into distritos values (null, "SUPE PUERTO", 125);

insert into provincias values (null, "Cajatambo", 14);
insert into distritos values (null, "CAJATAMBO", 126);
insert into distritos values (null, "COPA", 126);
insert into distritos values (null, "GORGOR", 126);
insert into distritos values (null, "HUANCAPON", 126);
insert into distritos values (null, "MANAS", 126);

insert into provincias values (null, "Canta", 14);
insert into distritos values (null, "ARAHUAY", 127);
insert into distritos values (null, "CANTA", 127);
insert into distritos values (null, "HUAMANTANGA", 127);
insert into distritos values (null, "HUAROS", 127);
insert into distritos values (null, "LACHAQUI ", 127);
insert into distritos values (null, "SAN BUENAVENTURA", 127);
insert into distritos values (null, "SANTA ROSA DE QUIVES", 127);

insert into provincias values (null, "Cañete", 14);
insert into distritos values (null, "ASIA", 128);
insert into distritos values (null, "CALANGO", 128);
insert into distritos values (null, "CERRO AZUL ", 128);
insert into distritos values (null, "CHILCA", 128);
insert into distritos values (null, "COAYLLO", 128);
insert into distritos values (null, "IMPERIAL ", 128);
insert into distritos values (null, "LUNAHUANA", 128);
insert into distritos values (null, "MALA", 128);
insert into distritos values (null, "NUEVO IMPERIAL ", 128);
insert into distritos values (null, "PACARAN", 128);
insert into distritos values (null, "QUILMANA", 128);
insert into distritos values (null, "SAN ANTONIO ", 128);
insert into distritos values (null, "SAN LUIS ", 128);
insert into distritos values (null, "SAN VICENTE DE CAÑETE", 128);
insert into distritos values (null, "SANTA CRUZ DE FLORES ", 128);
insert into distritos values (null, "ZUÑIGA ", 128);

insert into provincias values (null, "Huaral", 14);
insert into distritos values (null, "ATAVILLOS ALTO ", 129);
insert into distritos values (null, "ATAVILLOS BAJO ", 129);
insert into distritos values (null, "AUCALLAMA", 129);
insert into distritos values (null, "CHANCAY", 129);
insert into distritos values (null, "HUARAL", 129);
insert into distritos values (null, "IHUARI", 129);
insert into distritos values (null, "LAMPIAN", 129);
insert into distritos values (null, "PACARAOS", 129);
insert into distritos values (null, "SAN MIGUEL DE ACOS", 129);
insert into distritos values (null, "SANTA CRUZ DE ANDAMARCA", 129);
insert into distritos values (null, "SUMBILCA", 129);
insert into distritos values (null, "VEINTISIETE DE NOVIEMBRE", 129);

insert into provincias values (null, "Huarochirí", 14);
insert into distritos values (null, "ANTIOQUIA ", 130);
insert into distritos values (null, "CALLAHUANCA", 130);
insert into distritos values (null, "CARAMPOMA", 130);
insert into distritos values (null, "CHICLA", 130);
insert into distritos values (null, "CUENCA", 130);
insert into distritos values (null, "HUACHUPAMPA", 130);
insert into distritos values (null, "HUANZA", 130);
insert into distritos values (null, "HUAROCHIRI", 130);
insert into distritos values (null, "LAHUAYTAMBO", 130);
insert into distritos values (null, "LANGA", 130);
insert into distritos values (null, "LARAOS ", 130);
insert into distritos values (null, "MARIATANA", 130);
insert into distritos values (null, "MATUCANA", 130);
insert into distritos values (null, "RICARDO PALMA ", 130);
insert into distritos values (null, "SAN ANDRES DE TUPICOCHA ", 130);
insert into distritos values (null, "SAN ANTONIO ", 130);
insert into distritos values (null, "SAN BARTOLOME ", 130);
insert into distritos values (null, "SAN DAMIAN", 130);
insert into distritos values (null, "SAN JUAN DE IRIS ", 130);
insert into distritos values (null, "SAN JUAN DE TANTARANCHE ", 130);
insert into distritos values (null, "SAN LORENZO DE QUINTI", 130);
insert into distritos values (null, "SAN MATEO ", 130);
insert into distritos values (null, "SAN MATEO DE OTAO ", 130);
insert into distritos values (null, "SAN PEDRO DE CASTA ", 130);
insert into distritos values (null, "SAN PEDRO DE HUANCAYRE", 130);
insert into distritos values (null, "SANGALLAYA", 130);
insert into distritos values (null, "SANTA CRUZ DE COCACHACRA", 130);
insert into distritos values (null, "SANTA EULALIA", 130);
insert into distritos values (null, "SANTIAGO DE ANCHUCAYA ", 130);
insert into distritos values (null, "SANTIAGO DE TUNA", 130);
insert into distritos values (null, "SANTO DOMINGO DE LOS OLLEROS ", 130);
insert into distritos values (null, "SURCO", 130);

insert into provincias values (null, "Huaura", 14);
insert into distritos values (null, "AMBAR", 131);
insert into distritos values (null, "CALETA DE CARQUIN", 131);
insert into distritos values (null, "CHECRAS", 131);
insert into distritos values (null, "HUACHO", 131);
insert into distritos values (null, "HUALMAY", 131);
insert into distritos values (null, "HUAURA", 131);
insert into distritos values (null, "LEONCIO PRADO ", 131);
insert into distritos values (null, "PACCHO", 131);
insert into distritos values (null, "SANTA LEONOR", 131);
insert into distritos values (null, "SANTA MARIA ", 131);
insert into distritos values (null, "SAYAN", 131);
insert into distritos values (null, "VEGUETA", 131);

insert into provincias values (null, "Lima", 14);
insert into distritos values (null, "ANCON", 132);
insert into distritos values (null, "ATE", 132);
insert into distritos values (null, "BARRANCO", 132);
insert into distritos values (null, "BREÑA", 132);
insert into distritos values (null, "CARABAYLLO", 132);
insert into distritos values (null, "CHACLACAYO", 132);
insert into distritos values (null, "CHORRILLOS", 132);
insert into distritos values (null, "CIENEGUILLA", 132);
insert into distritos values (null, "COMAS ", 132);
insert into distritos values (null, "EL AGUSTINO", 132);
insert into distritos values (null, "INDEPENDENCIA", 132);
insert into distritos values (null, "JESUS MARIA", 132);
insert into distritos values (null, "LA MOLINA", 132);
insert into distritos values (null, "LA VICTORIA ", 132);
insert into distritos values (null, "LIMA", 132);
insert into distritos values (null, "LINCE", 132);
insert into distritos values (null, "LOS OLIVOS ", 132);
insert into distritos values (null, "LURIGANCHO", 132);
insert into distritos values (null, "LURIN", 132);
insert into distritos values (null, "MAGDALENA DEL MAR ", 132);
insert into distritos values (null, "MAGDALENA VIEJA ", 132);
insert into distritos values (null, "MIRAFLORES", 132);
insert into distritos values (null, "PACHACAMAC", 132);
insert into distritos values (null, "PUCUSANA", 132);
insert into distritos values (null, "PUENTE PIEDRA", 132);
insert into distritos values (null, "PUNTA HERMOSA", 132);
insert into distritos values (null, "PUNTA NEGRA", 132);
insert into distritos values (null, "RIMAC", 132);
insert into distritos values (null, "SAN BARTOLO", 132);
insert into distritos values (null, "SAN BORJA ", 132);
insert into distritos values (null, "SAN ISIDRO ", 132);
insert into distritos values (null, "SAN JUAN DE LURIGANCHO", 132);
insert into distritos values (null, "SAN JUAN DE MIRAFLORES", 132);
insert into distritos values (null, "SAN LUIS ", 132);
insert into distritos values (null, "SAN MARTIN DE PORRES", 132);
insert into distritos values (null, "SAN MIGUEL", 132);
insert into distritos values (null, "SANTA ANITA", 132);
insert into distritos values (null, "SANTA MARIA DEL MAR", 132);
insert into distritos values (null, "SANTA ROSA ", 132);
insert into distritos values (null, "SANTIAGO DE SURCO ", 132);
insert into distritos values (null, "SURQUILLO", 132);
insert into distritos values (null, "VILLA EL SALVADOR ", 132);
insert into distritos values (null, "VILLA MARIA DEL TRIUNFO", 132);

insert into provincias values (null, "Oyón", 14);
insert into distritos values (null, "ANDAJES", 133);
insert into distritos values (null, "CAUJUL", 133);
insert into distritos values (null, "COCHAMARCA", 133);
insert into distritos values (null, "NAVAN", 133);
insert into distritos values (null, "OYON", 133);
insert into distritos values (null, "PACHANGARA", 133);

insert into provincias values (null, "Yauyos", 14);
insert into distritos values (null, "ALIS", 134);
insert into distritos values (null, "AYAUCA", 134);
insert into distritos values (null, "AYAVIRI", 134);
insert into distritos values (null, "AZANGARO", 134);
insert into distritos values (null, "CACRA", 134);
insert into distritos values (null, "CARANIA", 134);
insert into distritos values (null, "CATAHUASI", 134);
insert into distritos values (null, "CHOCOS", 134);
insert into distritos values (null, "COCHAS", 134);
insert into distritos values (null, "COLONIA", 134);
insert into distritos values (null, "HONGOS", 134);
insert into distritos values (null, "HUAMPARA", 134);
insert into distritos values (null, "HUANCAYA", 134);
insert into distritos values (null, "HUAÑEC", 134);
insert into distritos values (null, "HUANGASCAR", 134);
insert into distritos values (null, "HUANTAN ", 134);
insert into distritos values (null, "LARAOS", 134);
insert into distritos values (null, "LINCHA", 134);
insert into distritos values (null, "MADEAN", 134);
insert into distritos values (null, "MIRAFLORES", 134);
insert into distritos values (null, "OMAS ", 134);
insert into distritos values (null, "PUTINZA", 134);
insert into distritos values (null, "QUINCHES", 134);
insert into distritos values (null, "QUINOCAY", 134);
insert into distritos values (null, "SAN JOAQUIN ", 134);
insert into distritos values (null, "SAN PEDRO DE PILAS ", 134);
insert into distritos values (null, "TANTA ", 134);
insert into distritos values (null, "TAURIPAMPA", 134);
insert into distritos values (null, "TOMAS", 134);
insert into distritos values (null, "TUPE", 134);
insert into distritos values (null, "VIÑAC", 134);
insert into distritos values (null, "VITIS ", 134);




-- Loreto
 insert into provincias values (null, "Alto Amazonas", 15);
insert into distritos values (null, "BALSAPUERTO", 135);
insert into distritos values (null, "JEBEROS", 135);
insert into distritos values (null, "LAGUNAS", 135);
insert into distritos values (null, "SANTA CRUZ", 135);
insert into distritos values (null, "TENIENTE CESAR LOPEZ ROJAS ", 135);
insert into distritos values (null, "YURIMAGUAS ", 135);

insert into provincias values (null, "Datem del Marañón", 15);
insert into distritos values (null, "ANDOAS", 136);
insert into distritos values (null, "BARRANCA", 136);
insert into distritos values (null, "CAHUAPANAS", 136);
insert into distritos values (null, "MANSERICHE", 136);
insert into distritos values (null, "MORONA", 136);
insert into distritos values (null, "PASTAZA", 136);

insert into provincias values (null, "Mariscal Loreto", 15);
insert into distritos values (null, "NAUTA", 137);
insert into distritos values (null, "PARINARI", 137);
insert into distritos values (null, "TIGRE", 137);
insert into distritos values (null, "TROMPETEROS", 137);
insert into distritos values (null, "URARINAS", 137);

insert into provincias values (null, "Mariscal Ramón Castilla", 15);
insert into distritos values (null, "PEBAS", 138);
insert into distritos values (null, "RAMON CASTILLA", 138);
insert into distritos values (null, "SAN PABLO", 138);
insert into distritos values (null, "YAVARI ", 138);

insert into provincias values (null, "Maynas", 15);
insert into distritos values (null, "ALTO NANAY", 139);
insert into distritos values (null, "BELEN", 139);
insert into distritos values (null, "FERNANDO LORES ", 139);
insert into distritos values (null, "INDIANA", 139);
insert into distritos values (null, "IQUITOS ", 139);
insert into distritos values (null, "LAS AMAZONAS", 139);
insert into distritos values (null, "MAZAN", 139);
insert into distritos values (null, "NAPO", 139);
insert into distritos values (null, "PUNCHANA", 139);
insert into distritos values (null, "PUTUMAYO ", 139);
insert into distritos values (null, "SAN JUAN BAUTISTA ", 139);
insert into distritos values (null, "TENIENTE MANUEL CLAVERO", 139);
insert into distritos values (null, "TORRES CAUSANA ", 139);

insert into provincias values (null, "Requena", 15);
insert into distritos values (null, "ALTO TAPICHE", 140);
insert into distritos values (null, "CAPELO", 140);
insert into distritos values (null, "EMILIO SAN MARTIN ", 140);
insert into distritos values (null, "JENARO HERRERA", 140);
insert into distritos values (null, "MAQUIA", 140);
insert into distritos values (null, "PUINAHUA", 140);
insert into distritos values (null, "REQUENA", 140);
insert into distritos values (null, "SAQUENA", 140);
insert into distritos values (null, "SOPLIN", 140);
insert into distritos values (null, "TAPICHE", 140);
insert into distritos values (null, "YAQUERANA ", 140);

insert into provincias values (null, "Ucayali", 15);
insert into distritos values (null, "CONTAMANA", 141);
insert into distritos values (null, "INAHUAYA", 141);
insert into distritos values (null, "PADRE MARQUEZ", 141);
insert into distritos values (null, "PAMPA HERMOSA", 141);
insert into distritos values (null, "SARAYACU", 141);



-- Madre de Dios
 insert into provincias values (null, "Manu", 16);
insert into distritos values (null, "FITZCARRALD", 142);
insert into distritos values (null, "HUEPETUHE", 142);
insert into distritos values (null, "MADRE DE DIOS", 142);
insert into distritos values (null, "MANU", 142);

insert into provincias values (null, "Tahuamanu", 16);
insert into distritos values (null, "IBERIA", 143);
insert into distritos values (null, "IÑAPARI", 143);
insert into distritos values (null, "TAHUAMANU", 143);

insert into provincias values (null, "Tambopata", 16);
insert into distritos values (null, "INAMBARI", 144);
insert into distritos values (null, "LABERINTO ", 144);
insert into distritos values (null, "LAS PIEDRAS ", 144);





-- Moquegua
 insert into provincias values (null, "General Sánchez Cerro", 17);
insert into distritos values (null, "COALAQUE", 145);
insert into distritos values (null, "ICHUÑA", 145);
insert into distritos values (null, "LA CAPILLA", 145);
insert into distritos values (null, "LLOQUE", 145);
insert into distritos values (null, "MATALAQUE", 145);
insert into distritos values (null, "OMATE", 145);
insert into distritos values (null, "PUQUINA", 145);
insert into distritos values (null, "QUINISTAQUILLAS ", 145);
insert into distritos values (null, "UBINAS", 145);
insert into distritos values (null, "YUNGA ", 145);

insert into provincias values (null, "Ilo", 17);
insert into distritos values (null, "EL ALGARROBAL", 146);
insert into distritos values (null, "ILO", 146);
insert into distritos values (null, "PACOCHA", 146);

insert into provincias values (null, "Mariscal Nieto", 17);
insert into distritos values (null, "CARUMAS", 147);
insert into distritos values (null, "CUCHUMBAYA", 147);
insert into distritos values (null, "MOQUEGUA ", 147);
insert into distritos values (null, "SAMEGUA", 147);
insert into distritos values (null, "SAN CRISTOBAL", 147);



-- Pasco
 insert into provincias values (null, "Daniel Alcides Carrión.", 18);
insert into distritos values (null, "CHACAYAN", 148);
insert into distritos values (null, "GOYLLARISQUIZGA", 148);
insert into distritos values (null, "PAUCAR", 148);
insert into distritos values (null, "SAN PEDRO DE PILLAO", 148);
insert into distritos values (null, "SANTA ANA DE TUSI ", 148);
insert into distritos values (null, "TAPUC ", 148);
insert into distritos values (null, "VILCABAMBA", 148);
insert into distritos values (null, "YANAHUANCA", 148);

insert into provincias values (null, "Oxapampa", 18);
insert into distritos values (null, "CHONTABAMBA", 149);
insert into distritos values (null, "HUANCABAMBA", 149);
insert into distritos values (null, "OXAPAMPA", 149);
insert into distritos values (null, "PALCAZU", 149);
insert into distritos values (null, "POZUZO", 149);
insert into distritos values (null, "PUERTO BERMUDEZ", 149);
insert into distritos values (null, "VILLA RICA", 149);

insert into provincias values (null, "Pasco", 18);
insert into distritos values (null, "CHAUPIMARCA", 150);
insert into distritos values (null, "HUACHON", 150);
insert into distritos values (null, "HUARIACA", 150);
insert into distritos values (null, "HUAYLLAY", 150);
insert into distritos values (null, "NINACACA", 150);
insert into distritos values (null, "PALLANCHACRA", 150);
insert into distritos values (null, "PAUCARTAMBO", 150);
insert into distritos values (null, "SAN FRANCISCO DE ASIS DE YARUSYACAN ", 150);
insert into distritos values (null, "SIMON BOLIVAR ", 150);
insert into distritos values (null, "TICLACAYAN ", 150);
insert into distritos values (null, "TINYAHUARCO", 150);
insert into distritos values (null, "VICCO", 150);





-- Piura

 insert into provincias values (null, "Ayabaca.", 19);
insert into distritos values (null, "AYABACA", 151);
insert into distritos values (null, "FRIAS ", 151);
insert into distritos values (null, "JILILI", 151);
insert into distritos values (null, "LAGUNAS ", 151);
insert into distritos values (null, "MONTERO", 151);
insert into distritos values (null, "PACAIPAMPA", 151);
insert into distritos values (null, "PAIMAS", 151);
insert into distritos values (null, "SAPILLICA", 151);
insert into distritos values (null, "SICCHEZ", 151);
insert into distritos values (null, "SUYO ", 151);

insert into provincias values (null, "Huancabamba.", 19);
insert into distritos values (null, "CANCHAQUE", 152);
insert into distritos values (null, "EL CARMEN DE LA FRONTERA ", 152);
insert into distritos values (null, "HUANCABAMBA", 152);
insert into distritos values (null, "HUARMACA", 152);
insert into distritos values (null, "LALAQUIZ", 152);
insert into distritos values (null, "SAN MIGUEL DE EL FAIQUE ", 152);
insert into distritos values (null, "SONDOR ", 152);
insert into distritos values (null, "SONDORILLO", 152);

insert into provincias values (null, "Morropón", 19);
insert into distritos values (null, "BUENOS AIRES ", 153);
insert into distritos values (null, "CHALACO", 153);
insert into distritos values (null, "CHULUCANAS", 153);
insert into distritos values (null, "LA MATANZA", 153);
insert into distritos values (null, "MORROPON ", 153);
insert into distritos values (null, "SALITRAL", 153);
insert into distritos values (null, "SAN JUAN DE BIGOTE ", 153);
insert into distritos values (null, "SANTA CATALINA DE MOSSA", 153);
insert into distritos values (null, "SANTO DOMINGO ", 153);
insert into distritos values (null, "YAMANGO", 153);

insert into provincias values (null, "Paita.", 19);
insert into distritos values (null, "AMOTAPE", 154);
insert into distritos values (null, "ARENAL", 154);
insert into distritos values (null, "COLAN", 154);
insert into distritos values (null, "LA HUACA", 154);
insert into distritos values (null, "PAITA ", 154);
insert into distritos values (null, "TAMARINDO", 154);
insert into distritos values (null, "VICHAYAL", 154);

insert into provincias values (null, "Piura.", 19);
insert into distritos values (null, "CASTILLA", 155);
insert into distritos values (null, "CATACAOS", 155);
insert into distritos values (null, "CURA MORI", 155);
insert into distritos values (null, "EL TALLAN", 155);
insert into distritos values (null, "LA ARENA ", 155);
insert into distritos values (null, "LA UNION", 155);
insert into distritos values (null, "LAS LOMAS ", 155);
insert into distritos values (null, "PIURA ", 155);
insert into distritos values (null, "TAMBO GRANDE", 155);

insert into provincias values (null, "Sechura.", 19);
insert into distritos values (null, "BELLAVISTA DE LA UNION ", 156);
insert into distritos values (null, "BERNAL ", 156);
insert into distritos values (null, "CRISTO NOS VALGA", 156);
insert into distritos values (null, "RINCONADA LLICUAR ", 156);
insert into distritos values (null, "SECHURA ", 156);
insert into distritos values (null, "VICE ", 156);

insert into provincias values (null, "Sullana.", 19);
insert into distritos values (null, "BELLAVISTA ", 157);
insert into distritos values (null, "IGNACIO ESCUDERO", 157);
insert into distritos values (null, "LANCONES", 157);
insert into distritos values (null, "MARCAVELICA", 157);
insert into distritos values (null, "MIGUEL CHECA ", 157);
insert into distritos values (null, "QUERECOTILLO ", 157);
insert into distritos values (null, "SALITRAL", 157);
insert into distritos values (null, "SULLANA ", 157);

insert into provincias values (null, "Talara.", 19);
insert into distritos values (null, "EL ALTO ", 158);
insert into distritos values (null, "LA BREA ", 158);
insert into distritos values (null, "LOBITOS ", 158);
insert into distritos values (null, "LSO ORGANOS ", 158);
insert into distritos values (null, "MANCORA ", 158);




-- Puno

 insert into provincias values (null, "Azángaro.", 20);
insert into distritos values (null, "ACHAYA", 159);
insert into distritos values (null, "ARAPA", 159);
insert into distritos values (null, "ASILLO", 159);
insert into distritos values (null, "AZANGARO", 159);
insert into distritos values (null, "CAMINACA", 159);
insert into distritos values (null, "CHUPA", 159);
insert into distritos values (null, "JOSE DOMINGO CHOQUEHUANCA", 159);
insert into distritos values (null, "MUÑANI", 159);
insert into distritos values (null, "POTONI", 159);
insert into distritos values (null, "SAMAN", 159);
insert into distritos values (null, "SAN ANTON", 159);
insert into distritos values (null, "SAN JOSE ", 159);
insert into distritos values (null, "SAN JUAN DE SALINAS ", 159);
insert into distritos values (null, "SANTIAGO DE PUPUJA ", 159);
insert into distritos values (null, "TIRAPATA", 159);

insert into provincias values (null, "Carabaya.", 20);
insert into distritos values (null, "AJOYANI", 160);
insert into distritos values (null, "AYAPATA", 160);
insert into distritos values (null, "COASA", 160);
insert into distritos values (null, "CORANI", 160);
insert into distritos values (null, "CRUCERO", 160);
insert into distritos values (null, "ITUATA", 160);
insert into distritos values (null, "MACUSANI", 160);
insert into distritos values (null, "OLLACHEA", 160);
insert into distritos values (null, "SAN GABAN", 160);
insert into distritos values (null, "USICAYOS ", 160);

insert into provincias values (null, "Chucuito.", 20);
insert into distritos values (null, "DESAGUADERO", 161);
insert into distritos values (null, "HUACULLANI", 161);
insert into distritos values (null, "JULI", 161);
insert into distritos values (null, "KELLUYO ", 161);
insert into distritos values (null, "PISACOMA", 161);
insert into distritos values (null, "POMATA", 161);
insert into distritos values (null, "ZEPITA", 161);

insert into provincias values (null, "El Collao.", 20);
insert into distritos values (null, "CAPAZO ", 162);
insert into distritos values (null, "CONDURIRI ", 162);
insert into distritos values (null, "ILAVE", 162);
insert into distritos values (null, "PILCUYO", 162);
insert into distritos values (null, "SANTA ROSA ", 162);

insert into provincias values (null, "Huancané.", 20);
insert into distritos values (null, "COJATA", 163);
insert into distritos values (null, "HUANCANE", 163);
insert into distritos values (null, "HUATASANI", 163);
insert into distritos values (null, "INCHUPALLA", 163);
insert into distritos values (null, "PUSI ", 163);
insert into distritos values (null, "ROSASPATA", 163);
insert into distritos values (null, "TARACO", 163);
insert into distritos values (null, "VILQUE CHICO ", 163);

insert into provincias values (null, "Lampa.", 20);
insert into distritos values (null, "CABANILLA", 164);
insert into distritos values (null, "CALAPUJA", 164);
insert into distritos values (null, "LAMPA", 164);
insert into distritos values (null, "NICASIO", 164);
insert into distritos values (null, "OCUVIRI ", 164);
insert into distritos values (null, "PALCA", 164);
insert into distritos values (null, "PARATIA ", 164);
insert into distritos values (null, "PUCARA", 164);
insert into distritos values (null, "SANTA LUCIA ", 164);
insert into distritos values (null, "VILAVILA", 164);

insert into provincias values (null, "Melgar.", 20);
insert into distritos values (null, "ANTAUTA", 165);
insert into distritos values (null, "AYAVIRI ", 165);
insert into distritos values (null, "CUPI", 165);
insert into distritos values (null, "LLALLI", 165);
insert into distritos values (null, "MACARI ", 165);
insert into distritos values (null, "NUÑOA ", 165);
insert into distritos values (null, "ORURILLO", 165);
insert into distritos values (null, "SANTA ROSA ", 165);
insert into distritos values (null, "UMACHIRI", 165);

insert into provincias values (null, "Moho.", 20);
insert into distritos values (null, "CONIMA", 166);
insert into distritos values (null, "HUAYRAPATA ", 166);
insert into distritos values (null, "MOHO", 166);
insert into distritos values (null, "TILALI", 166);

insert into provincias values (null, "Puno.", 20);
insert into distritos values (null, "ACORA", 167);
insert into distritos values (null, "AMANTANI ", 167);
insert into distritos values (null, "ATUNCOLLA", 167);
insert into distritos values (null, "CAPACHICA ", 167);
insert into distritos values (null, "CHUCUITO ", 167);
insert into distritos values (null, "COATA", 167);
insert into distritos values (null, "HUATA", 167);
insert into distritos values (null, "MAÑAZO ", 167);
insert into distritos values (null, "PAUCARCOLLA", 167);
insert into distritos values (null, "PICHACANI", 167);
insert into distritos values (null, "PLATERIA ", 167);
insert into distritos values (null, "PUNO ", 167);
insert into distritos values (null, "SAN ANTONIO", 167);
insert into distritos values (null, "TIQUILLACA", 167);
insert into distritos values (null, "VILQUE", 167);

insert into provincias values (null, "San Antonio de Putina.", 20);
insert into distritos values (null, "ANANEA", 168);
insert into distritos values (null, "PEDRO VILCA APAZA", 168);
insert into distritos values (null, "PUTINA ", 168);
insert into distritos values (null, "QUILCAPUNCU", 168);
insert into distritos values (null, "SINA ", 168);

insert into provincias values (null, "San Román.", 20);
insert into distritos values (null, "CABANA", 169);
insert into distritos values (null, "CABANILLA", 169);
insert into distritos values (null, "CARACOTO ", 169);
insert into distritos values (null, "JULIACA ", 169);

insert into provincias values (null, "Sandia.", 20);
insert into distritos values (null, "ALTO INAMBARI", 170);
insert into distritos values (null, "CUYOCUYO", 170);
insert into distritos values (null, "LIMBANI", 170);
insert into distritos values (null, "PATAMBUCO", 170);
insert into distritos values (null, "PHARA", 170);
insert into distritos values (null, "QUIACA", 170);
insert into distritos values (null, "SAN JUAN DEL ORO ", 170);
insert into distritos values (null, "SAN PEDRO DE PUTINA PUNCO ", 170);
insert into distritos values (null, "SANDIA", 170);
insert into distritos values (null, "YANAHUAYA", 170);

insert into provincias values (null, "Yunguyo.", 20);
insert into distritos values (null, "ANAPIA", 171);
insert into distritos values (null, "COPANI", 171);
insert into distritos values (null, "CUTURAPI", 171);
insert into distritos values (null, "OLLARAYA", 171);
insert into distritos values (null, "TINICACHI", 171);
insert into distritos values (null, "UNICACHI", 171);




-- San Martín

 insert into provincias values (null, "Bellavista.", 21);
insert into distritos values (null, "ALTO BIAVO", 172);
insert into distritos values (null, "BAJO BIAVO ", 172);
insert into distritos values (null, "BELLAVISTA ", 172);
insert into distritos values (null, "HUALLAGA", 172);
insert into distritos values (null, "SAN PABLO", 172);
insert into distritos values (null, "SAN RAFAEL", 172);

insert into provincias values (null, "El Dorado.", 21);
insert into distritos values (null, "AGUA BLANCA", 173);
insert into distritos values (null, "SAN JOSE DE SISA ", 173);
insert into distritos values (null, "SAN MARTIN ", 173);
insert into distritos values (null, "SANTA ROSA", 173);
insert into distritos values (null, "SHATOJA", 173);

insert into provincias values (null, "Huallaga.", 21);
insert into distritos values (null, "ALTO SAPOSOA", 174);
insert into distritos values (null, "EL ESLABON", 174);
insert into distritos values (null, "PISCOYACU", 174);
insert into distritos values (null, "SACANCHE", 174);
insert into distritos values (null, "SAPOSOA", 174);
insert into distritos values (null, "TINGO DE SAPOSOA ", 174);

insert into provincias values (null, "Lamas.", 21);
insert into distritos values (null, "ALONSO DE ALVARADO", 175);
insert into distritos values (null, "BARRANQUITA ", 175);
insert into distritos values (null, "CAYNARACHI ", 175);
insert into distritos values (null, "CUÑUMBUQUI ", 175);
insert into distritos values (null, "LAMAS ", 175);
insert into distritos values (null, "PINTO RECODO ", 175);
insert into distritos values (null, "RUMISAPA", 175);
insert into distritos values (null, "SAN ROQUE DE CUMBAZA", 175);
insert into distritos values (null, "SHANAO", 175);
insert into distritos values (null, "TABALOSOS ", 175);
insert into distritos values (null, "ZAPATERO", 175);

insert into provincias values (null, "Mariscal Caceres.", 21);
insert into distritos values (null, "CAMPANILLA", 176);
insert into distritos values (null, "HUICUNGO", 176);
insert into distritos values (null, "JUANJUI", 176);
insert into distritos values (null, "PACHIZA", 176);
insert into distritos values (null, "PAJARILLO", 176);

insert into provincias values (null, "Moyobamba.", 21);
insert into distritos values (null, "CALZADA", 177);
insert into distritos values (null, "HABANA", 177);
insert into distritos values (null, "JEPELACIO", 177);
insert into distritos values (null, "MOYOBAMBA", 177);
insert into distritos values (null, "SORITOR", 177);
insert into distritos values (null, "YANTALO", 177);

insert into provincias values (null, "Picota.", 21);
insert into distritos values (null, "BUENOS AIRES", 178);
insert into distritos values (null, "CASPISAPA", 178);
insert into distritos values (null, "PICOTA", 178);
insert into distritos values (null, "PILLUANA", 178);
insert into distritos values (null, "PUCACACA", 178);
insert into distritos values (null, "SAN CRISTOBAL", 178);
insert into distritos values (null, "SAN HILARION ", 178);
insert into distritos values (null, "SHAMBOYACU", 178);
insert into distritos values (null, "TINGO DE PONASA", 178);
insert into distritos values (null, "TRES UNIDOS ", 178);

insert into provincias values (null, "Rioja.", 21);
insert into distritos values (null, "AWAJUN", 179);
insert into distritos values (null, "ELIAS SOPLIN VARGAS ", 179);
insert into distritos values (null, "NUEVA CAJAMARCA", 179);
insert into distritos values (null, "PARDO MIGUEL ", 179);
insert into distritos values (null, "POSIC", 179);
insert into distritos values (null, "RIOJA ", 179);
insert into distritos values (null, "SAN FERNANDO", 179);
insert into distritos values (null, "YORONGOS ", 179);
insert into distritos values (null, "YURACYACU", 179);

insert into provincias values (null, "San Martín.", 21);
insert into distritos values (null, "ALBERTO LEVEAU", 180);
insert into distritos values (null, "CACATACHI ", 180);
insert into distritos values (null, "CHAZUTA", 180);
insert into distritos values (null, "CHIPURANA", 180);
insert into distritos values (null, "EL PORVENIR ", 180);
insert into distritos values (null, "HUIMBAYOC", 180);
insert into distritos values (null, "JUAN GUERRA", 180);
insert into distritos values (null, "LA BANDA DE SHILCAYO", 180);
insert into distritos values (null, "MORALES", 180);
insert into distritos values (null, "PAPAPLAYA", 180);
insert into distritos values (null, "SAN ANTONIO", 180);
insert into distritos values (null, "SAUCE", 180);
insert into distritos values (null, "SHAPAJA", 180);
insert into distritos values (null, "TARAPOTO ", 180);

insert into provincias values (null, "Tocache.", 21);
insert into distritos values (null, "NUEVO PROGRESO", 181);
insert into distritos values (null, "POLVORA ", 181);
insert into distritos values (null, "SHUNTE", 181);
insert into distritos values (null, "TOCACHE", 181);




-- Tacna

 insert into provincias values (null, "Candarave.", 22);
insert into distritos values (null, "CAIRANI", 182);
insert into distritos values (null, "CAMILACA", 182);
insert into distritos values (null, "CANDARAVE", 182);
insert into distritos values (null, "CURIBAYA", 182);
insert into distritos values (null, "HUANUARA", 182);
insert into distritos values (null, "QUILAHUANI", 182);

insert into provincias values (null, "Jorge Basadre.", 22);
insert into distritos values (null, "ILABAYA", 183);
insert into distritos values (null, "ITE", 183);
insert into distritos values (null, "LOCUMBA", 183);

insert into provincias values (null, "Tacna.", 22);
insert into distritos values (null, "ALTO DE LA ALIANZA", 184);
insert into distritos values (null, "CALANA", 184);
insert into distritos values (null, "CIUDAD NUEVA", 184);
insert into distritos values (null, "CORONEL GREGORIO ALBARRACIN LANCHIP", 184);
insert into distritos values (null, "INCLAN", 184);
insert into distritos values (null, "PACHIA", 184);
insert into distritos values (null, "PALCA", 184);
insert into distritos values (null, "POCOLLAY", 184);
insert into distritos values (null, "SAMA", 184);
insert into distritos values (null, "TACNA", 184);

insert into provincias values (null, "Tarata.", 22);
insert into distritos values (null, "ESTIQUE", 185);
insert into distritos values (null, "ESTIQUE-PAMPA", 185);
insert into distritos values (null, "HEROES ALBARRACIN", 185);
insert into distritos values (null, "SITAJARA", 185);
insert into distritos values (null, "SUSAPAYA", 185);
insert into distritos values (null, "TARATA", 185);
insert into distritos values (null, "TARUCACHI ", 185);




-- Tumbes
 insert into provincias values (null, "Contralmirante Villar.", 23);
insert into distritos values (null, "CASITAS ", 186);
insert into distritos values (null, "ZORRITOS", 186);

insert into provincias values (null, "Tumbes.", 23);
insert into distritos values (null, "CORRALES", 187);
insert into distritos values (null, "LA CRUZ", 187);
insert into distritos values (null, "PAMPAS E HOSPITAL", 187);
insert into distritos values (null, "SAN JACINTO", 187);
insert into distritos values (null, "SAN JUAN DE LA VIRGEN", 187);
insert into distritos values (null, "TUMBRES", 187);

insert into provincias values (null, "Zarumilla.", 23);
insert into distritos values (null, "AGUAS VREDES", 188);
insert into distritos values (null, "MATAPALO", 188);
insert into distritos values (null, "PAPAYAL", 188);





-- Ucayali

 insert into provincias values (null, "Atalaya.", 24);
insert into distritos values (null, "RAYMONDI", 189);
insert into distritos values (null, "SEPAHUA", 189);
insert into distritos values (null, "TAHUANIA", 189);
insert into distritos values (null, "YURUA", 189);

insert into provincias values (null, "Coronel Portillo.", 24);
insert into distritos values (null, "CALLERIA", 190);
insert into distritos values (null, "CAMPOVERDE", 190);
insert into distritos values (null, "IPARIA", 190);
insert into distritos values (null, "MASISEA", 190);
insert into distritos values (null, "NUEVA REQUENA", 190);
insert into distritos values (null, "YARINACHOCHA", 190);

insert into provincias values (null, "Padre Abad.", 24);
insert into distritos values (null, "CURIMANA", 191);
insert into distritos values (null, "IRAZOLA", 191);
insert into distritos values (null, "PADRE ABAD", 191);

insert into provincias values (null, "Purús", 24);

