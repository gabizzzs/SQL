/*EXERCICIO RH*/

CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(255),
    cpf varchar(255),
    data_nascimento date,
    salario decimal (8,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,cpf,data_nascimento,salario)VALUES("Aylla Macongo", "149877734101","2001-12-05",500.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 15000.00 WHERE id = 1;

