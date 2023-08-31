CREATE DATABASE ecommerce;

use ecommerce;

create table client(
idClient int auto-incerment primary key,
Fname  varchar(10),
Minit char(3),
laname varchar(20),
CPF char(11) not null,
constraint unique_cpf_client unique (CPF)
Address VARCHAR (30),
CONSTRAINT unique_cpf_client unique (CPF)
);

create table product(
idProduct int auto-incerment primary key,
Pname  varchar(10),
classification_kids bool,
category enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
avaliacao float default 0,
size   varchar(10),
CONSTRAINT unique_cpf_client unique (CPF)
);

create table payments(
idclient int,
idPayment int,
typePayment enum('boleto','Vestimenta','Cartão','Dois cartões'),
linitAvaliable float,
primary key(idClient,id_payment)

);

create table order(
idOrders int auto-incerment primary key,
idOrdersClient  int,
classification_kids bool,
orderStatus enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
sendValue float default 10,
paymentCash bool default false,
orderDescription   varchar(255),
CONSTRAINT fk_corders_client foreign key(idOrderClient) references  client(idClient)
);

);
