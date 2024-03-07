create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categorias (
	id bigint auto_increment,
    tamanho enum('P', 'M', 'G'),
    bordarecheada boolean,
    primary key (id)
);
create table tb_pizzas (
	id bigint auto_increment,
    sabor varchar(255),
    tipo enum('Salgada', 'Doce'),
    azeitonas boolean,
    valor decimal(4,2),
    categoriaid bigint,
    primary key (id)
);

alter table tb_pizzas add constraint fk_categorias
foreign key (categoriaid) references tb_categorias (id);

insert into tb_categorias (tamanho, bordarecheada) values
('P', true);
insert into tb_categorias (tamanho, bordarecheada) values
('M', false);
insert into tb_categorias (tamanho, bordarecheada) values
('G', true);
insert into tb_categorias (tamanho, bordarecheada) values
('P', false);
insert into tb_categorias (tamanho, bordarecheada) values
('M', true);

insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Marguerita", "Salgada", true, 45.00, 1);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Banana", "Doce", false, 40.00, 2);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Pepperoni", "Salgada", true, 55.00, 3);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Vegetariana", "Salgada", true, 35.00, 4);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Nutella", "Doce", false, 42.00, 5);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Portuguesa", "Salgada", true, 50.00, 6);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Calabresa", "Salgada", false, 55.00, 7);
insert into tb_pizzas (sabor, tipo, azeitonas, valor, categoriaid) values
("Morango", "Doce", false, 45.00, 8);

select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor between 50.00 and 100.00;
select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas
inner join tb_categorias
on tb_pizzas.categoriaid = tb_categorias.id;

select * from tb_pizzas
inner join tb_categorias
on tb_pizzas.categoriaid = tb_categorias.id
where tipo = "Doce";