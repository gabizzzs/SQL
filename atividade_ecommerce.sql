/*EXERCICIO E-COMMERCE*/

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_ecommerce(
	id bigint auto_increment primary key,
    produto varchar(100),
    codigo bigint,
	quantidade int,
    valor decimal(8,2)
);

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce(produto,codigo,quantidade,valor)VALUE("cadeira", 4687512320012, 5, 250.50);

SELECT * FROM tb_ecommerce WHERE valor > 500;

SELECT * FROM tb_ecommerce WHERE valor < 500;

UPDATE tb_ecommerce SET valor = 20.00 WHERE id = 1;
