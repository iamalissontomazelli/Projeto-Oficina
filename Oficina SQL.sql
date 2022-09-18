-- Criação projeto oficina e-commerce
create database ecommerce;
use ecommerce;

-- criar tabela cliente

create table clients(
		idclient int auto_increment primary key,
        Fname varchar(10),
        Minit char (3),
        Lname varchar (45),
        CPF char (11) not null,
        Address varchar(45),
		constraint unique_cpf_client unique (CPF)
        );

-- Carros
create table cars(
		idcars int auto_increment primary key,
        color varchar(10),
        type char (3),
        brand varchar (45),
        license char (11) not null,
		constraint unique_license_client unique (placa),
        constraint unique_color_client unique (cor)
        );

-- criar tabela serviço realizado 

create table service(
		idService int auto_increment primary key,
        typeService varchar(10) not null,
        classification_kids bool default false,
        category enum('Lavagem','Luzes','Motor','Pneus','Vidros','Pintura') not null,
        avaliação float default 0
      );

create table payments (
	idclient int,
    id_payment int,
    typePayment enum('Dinheiro','Dois Cartões'),
    limitAvaliable float,
    primary key(idClient, id_payment)
);

-- Tabela de Pedidos 

create table orders(
	idOrder int auto_increment primary key,
	idOrderClient int,
    orderstatus enum('Em Processamento', 'Em execução', 'Resolvido') default 'Em Processamento',
    orderDescription varchar(255),
	sendValue float default 10,
    paymentCash bool default false
    ); 
	