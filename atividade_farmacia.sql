CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    categoria varchar(255),
    receita boolean
);

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    produto varchar(255),
    valor decimal (6,2),
    marca varchar(255),
    codigo_barra bigint,
    desconto decimal(6,2),
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(categoria,receita) VALUE("Higiene pessoal",false);
INSERT INTO tb_categorias(categoria,receita) VALUE("Produtor para pele",false);
INSERT INTO tb_categorias(categoria,receita) VALUE("Perfumaria",false);
INSERT INTO tb_categorias(categoria,receita) VALUE("Remédios",true);
INSERT INTO tb_categorias(categoria,receita) VALUE("Infantil",false);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Escova de dente", 20.00, "colgate", 1234567890, 18.59,1);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Creme de rosto", 59.99, "Nivea", 9874567890, 49.99,2);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Hidradante Labial", 7.00, "CARMED", 1234124890, 6.55,3);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Amoxicilina", 70.00, "Neo Quimica", 5634567890, 55.59,4);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Fralda", 30.00, "Baby Sec", 1234578890, 25.50,5);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Lenço Umedecido", 12.00, "Huggies", 1234567790, 10.00,5);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Creme de Cabelo", 15.00, "Salon Line", 5489567890, 10.00,3);
INSERT INTO tb_produtos(produto,valor,marca,codigo_barra,desconto,categoria_id) VALUE("Shampoo", 12.87, "Seda", 1234546890, 10.58,1);

SELECT * FROM tb_produtos WHERE desconto > 50.00;

SELECT * FROM tb_produtos WHERE desconto > 5.00 AND desconto < 60.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE marca LIKE "%nivea%";



