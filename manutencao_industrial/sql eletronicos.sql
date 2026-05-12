create database loja_eletronicos;
use loja_eletronicos;

create table cliente(
id_cliente int primary key auto_increment,
nome_cliente varchar(100)not null default 'Sem nome',
cpf_cliente varchar (14) unique not null,
telefone_cliente varchar(20)unique not null
);

create table vendas (
id_vendas int primary key auto_increment,
data_vendas date not null,
valortotal_vendas decimal(10,2) not null,
id_cliente int,
foreign key(id_cliente) references cliente(id_cliente)
);

create table pagamento(
id_pagamento int primary key auto_increment,
tipode_pagamento varchar(50) not null,
parcelas_pagamento int not null,
id_vendas int, 
foreign key (id_vendas) references vendas(id_vendas)
);

create table item_venda(
id_item int primary key auto_increment,
id_vendas int,
id_produto int,
quantidade_item int,
preco_item decimal(10 , 2),
primary key (id_vendas, id_produto),
foreign key (id_vendas) references vendas(id_vendas),
foreign key (id_produto) references produto(id_produto)
);

create table produto (
id_produto int primary key auto_increment,
nome_produto varchar (100) not null,
preco_produto decimal (10 , 2) not null,
categoria_produto varchar(50) ,
marca_produto varchar(50)
);

create table estoque(
id_produto int,
quantidade_estoque int not null,
foreign key (id_produto) references produto(id_produto)
);








create database manutenção_industrial;
use manutenção_industrial;

create table maquinas(
id_maquinas int primary key auto_increment,
nome_maquinas varchar(100)not null default 'Sem nome',
setor_maquinas varchar(100)not null default 'Sem setor'
);

create table ordem_servicos (
id_os int primary key auto_increment,
dataaberto_os date not null,
datafechado_os decimal(10,2) not null,
status_os int,
foreign key(id_maquinas) references maquinas(id_maquinas)
);

create table registro_manutencao (
id_registro int primary key auto_increment,
id_maquina int,
id_os int,
 primary key (id_maquinas, id_os),
foreign key(id_maquinas) references maquinas(id_maquinas),
foreign key (id_os) references ordem_servicos(id_os)
);

create table os_tecnicos(
id_ostecnicos int primary key auto_increment,
id_tecnico int,
id_maquina int,
id_os int,
primary key (id_tecnico, id_maquina,id_os),
foreign key (id_tecnico) references tecnico(id_tecnico),
foreign key (id_maquinas) references maquinas(id_maquinas),
foreign key (id_os) references ordem_servicos(id_os)
);

create table tecnicos (
id_tecnico int primary key auto_increment,
nome_tecnico varchar(100) not null,
cpf_tecnico varchar(14) not null,
especialidade_tecnico varchar(100)
);

create table os_pecas(
id_ospecas int primary key auto_increment,
id_maquinas int,
id_os int,
id_pecas int,
primary key (id_maquinas, id_os,id_pecas),
foreign key (id_maquinas) references maquinas(id_maquinas),
foreign key (id_os) references ordem_serviços(id_os),
foreign key (id_pecas) references pecas(id_pecas)
);

create table pecas(
id_pecas int primary key auto_increment,
quantidade_pecas int,
estoquemin_pecas int
);

create table estoque_pecas(
id_estoquepecas int primary key auto_increment,
foreign key (id_pecas) references pecas(id_pecas)
);
