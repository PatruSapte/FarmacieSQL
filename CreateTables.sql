create table produse(id int primary key auto_increment, denumire char(15), pret double);
create table categori(id int primary key auto_increment, denumire char(15));
create table prod_cat(id_prod int, id_cat int);
create table comenzi_dona(id_comanda int, id_produs int, cantitate double, data date);
create table comenzi_vlad(id_comanda int, id_produs int, cantitate double, data date);

insert into prod_cat(id_prod, id_cat) values (1,1),(2,1),(3,1),(3,3),(4,6),(4,1),(5,4),(6,4),(7,1),(7,4),(8,6),(9,1),(10,4),(11,2),(12,2),(13,5),(14,5),(15,3),(16,3);
insert into produse(denumire,pret) values ('paracetamol',5),('parasinus',10),('nurofen',20),('xanax',7),('eritromicina',10),('Ampicilina',115),('ibufen',7),('bromazepam',11),('paduden',14),('biofen',16.5),('Somatodrol',170),('Metadrol',199.9);
insert into comenzi_dona(id_produs, cantitate, data) values (2,10,20210715),(3,5,20210715),(4,2,20210915),(7,9,20210925),(5,55,20210210),(8,20,20211215),(9,41,20211020),(11,1,20200201),(12,18,20200825),(13,36,20200810), (2,2,20200810), (4,15,20210811);
insert into comenzi_dona(id_produs, cantitate, data) values (1,50,20210715),(4,30,20210715),(10,2,20210915),(13,5,20210925),(8,8,20210210),(1,15,20211215),(2,25,20211020),(3,11,20200201),(5,35,20200825),(6,42,20200810), (7,4,20200810), (12,20,20210811);