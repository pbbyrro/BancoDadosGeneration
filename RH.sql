create database db_rh;
use db_rh;
create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255),
salario decimal(8,2),
andar int,
primary key (id)
);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Fernanda", "analista", 2000.00, 1);
create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255),
salario decimal(8,2),
andar int,
primary key (id)
);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Fernanda", "analista", 2000.00, 1);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Henrique", "gerente", 5000.00, 2);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Roberta", "faxineira", 1000.00, 1);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Patrick", "desenvolvedor jr", 1500.00, 2);
insert into tb_funcionarios (nome, cargo, salario, andar)
values ("Luana", "desenvolvedor senior", 9000.00, 2);
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;
update tb_funcionarios set andar = 1 where id = 5;