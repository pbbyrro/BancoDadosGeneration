create database db_ecommerce;
use db_ecommerce;
create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2),
categoria varchar(255),
datavalidade date,
reciclavel boolean,
primary key (id)
);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Laranja", 2.00, "Fruta", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Guaraná", 10.00, "Refrigerante", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Bola de plastico", 20.00, "Produtos esportivos", "2024-05-03", true);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Goiaba", 3.00, "Fruta", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Raquete de tenis", 50.00, "Produtos esportivos", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Coca-cola", 10.00, "Refrigerante", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Computador", 5000.00, "Produtos eletronicos", "2024-05-03", false);
insert into tb_produtos (nome, preco, categoria, datavalidade, reciclavel)
values ("Chocolate", 6.00, "Doces", "2024-05-03", false);
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set preco = 11.00 where id = 2;


