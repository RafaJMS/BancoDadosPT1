create database producaobd

go

use producaobd

go

create table Fabricante(
codfabricante smallint primary key identity(1,1),
nomefabricante varchar(30)

);

create table Produto(
codproduto int primary key identity(10,1),
nomeproduto varchar(30),
codfabricante smallint,
foreign key(codfabricante) references Fabricante(codfabricante)
);

create table Lote(
numlote int primary key identity(1,1),
datavalidade date,
precounitario decimal(10,2),
quantidade smallint default 100,
valorlote decimal(10,2),
codproduto int,
foreign key(codproduto) references Produto(codproduto)
);

insert into Fabricante(nomefabricante) values
('Clear'),
('Rexona'),
('Jhonson & Jhonson'),
('Coleson');

insert into Produto(nomeproduto,codfabricante) values
('Sabonete em Barra',2),
('Shampoo Anticaspa',1),
('Desodorante Aerosol Neutro',2),
('Sabonete Liquido',2),
('Protetor Solar 30',3),
('Shampoo 2 em 1',2),
('Desodorante Aerosol Morango',2),
('Shampoo Anticaspa',2),
('Protetor Solar 60',3),
('Desodorante Rollon',1);
