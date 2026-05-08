create database cinema;
use cinema;


create table clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente varchar(100) not null default 'Usuário inativo',
rg_cliente int(14) unique not null
);

create table ingresso(
id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
valores_ingresso decimal (6 , 2) check(salario_usuario>=0)
);

create table filme(
id_filme INT PRIMARY KEY AUTO_INCREMENT,
categoria_filme varchar(100) not null default 'Categoria inativa',
duracao_filme decimal (5 , 2) check(salario_usuario>=0),
nome_filme varchar(50) not null default 'Nome filme inativo'
);


create table sessao (
id_sessao INT PRIMARY KEY AUTO_INCREMENT,
horarios_sessao decimal (5 , 2) check(salario_usuario>=0),
nome_sessao varchar(50) not null default 'Nome sessão inativa'
);

create table sala(
id_sala INT PRIMARY KEY AUTO_INCREMENT,
categoria_sala varchar(100) not null default 'Categoria inativa',
numero_sala int(30) not null,
descricao_sala varchar(100) default 'Descricao inativa'
);




