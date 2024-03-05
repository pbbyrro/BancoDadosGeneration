create database db_escola;
use db_escola;
create table tb_alunos (
id bigint auto_increment,
nome varchar(255) not null,
nascimento date,
serie varchar(255),
turma enum('A', 'B', 'C'),
notafinal decimal(2,1),
primary key (id)
);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Lucas", "2005-06-12", "8 ano", 'A', 4.5);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Pedro", "2004-08-25", "6 ano", 'B', 6.7);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Vitoria", "2008-01-02", "3 ano", 'C', 7.8);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Thales", "2009-06-24", "2 ano", 'A', 9.0);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Thais", "2005-10-10", "8 ano", 'B', 3.4);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Aline", "2003-09-03", "9 ano", 'C', 5.2);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Beatriz", "2004-11-02", "6 ano", 'A', 8.5);
insert into tb_alunos (nome, nascimento, serie, turma, notafinal)
values ("Fernando", "2003-05-22", "9 ano", 'B', 2.7);
select * from tb_alunos where notafinal > 7.0;
select * from tb_alunos where notafinal < 7.0;
update tb_alunos set notafinal = 5.0 where id = 1;

