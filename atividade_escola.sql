/*Comando de Crianção banco de dados*/
CREATE DATABASE db_escola_generation;

/*Seleciona qual banco de dados vou usar pra inserir tabela*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
    id bigint auto_increment primary key,  /*autoincrement usado uma vez só por cada tabela*/
	nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)
);

SELECT * FROM tb_alunes; /*Consultas, manipulação de dados (seleciona todos os dados da tabela de alunes)*/

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes", "1997-09-17", 57, 5);

SELECT * FROM tb_alunes;

/*Trazer dados da tabela em especifico(seleciona todos os dados da tabela de alunes onde a nota for maior que 7*/
SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7;

/*Update e delete são baseados no id */
UPDATE tb_alunes SET nota = 10 WHERE id = 2 ;

SET SQL_SAFE_UPDATES = 1;



