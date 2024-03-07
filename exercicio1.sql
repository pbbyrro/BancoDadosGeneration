create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes (
	id bigint auto_increment,
    categoria varchar(255),
    poder varchar(255),
    primary key (id)
);
create table tb_personagens (
	id bigint auto_increment,
    nome varchar(255),
    nascimento date,
    poderataque bigint,
    poderdefesa bigint,
    classeid bigint,
    primary key (id)
);
alter table tb_personagens add constraint fk_classes
foreign key (classeid) references tb_classes (id);
insert into tb_classes (categoria, poder) values
("Fada", "Voar");
insert into tb_classes (categoria, poder) values
("Bruxa", "Fazer pocoes");
insert into tb_classes (categoria, poder) values
("Gnomo", "Desaparecer");
insert into tb_classes (categoria, poder) values
("Humano", "Correr");
insert into tb_classes (categoria, poder) values
("Cachorro", "Farejar");

insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("José", "1985-05-09", 2100, 1000, 1);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Clara", "1990-03-22", 4000, 5000, 2);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Lucas", "1970-09-13", 400, 3000, 3);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Pedro", "1997-10-10", 2000, 2000, 4);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Ricardo", "1980-01-03", 1000, 90, 5);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Gabriela", "1987-01-15", 3500, 6500, 6);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Rogerio", "2000-09-08", 1000, 1000, 7);
insert into tb_personagens (nome, nascimento, poderataque, poderdefesa, classeid) values
("Leticia", "2005-10-14", 2300, 2600, 8);

select * from tb_personagens where poderataque > 2000;
select * from tb_personagens where poderdefesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

select * from tb_personagens 
inner join tb_classes 
on tb_personagens.classeid = tb_classes.id;

select nome from tb_personagens
inner join tb_classes
on tb_personagens.classeid = tb_classes.id
where categoria = "Bruxa";

