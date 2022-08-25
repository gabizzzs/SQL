CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
    
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Medio",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Medio",false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Salgada","Grande",false);

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Doce","Grande",true);

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Vegetariana","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUE("Vegana","Brotinho",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Frango C/ Catupiry", 30.00, "Tradicional",5,1);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Mussarela", 40.59, "Tradicional",5,2);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Prestigio", 50.99, "Tradicional",2,8);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Lombo C/ Catupiry", 60.99, "Tradicional",3,6);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Brócules C/ Catupiry", 40.00, "Tradicional",4,9);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUE("Calabresa", 45.99, "Tradicional",5,1);

/*Estrutura de uma consulta: SELECT - CONSICAO - ORDENACAO*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

/*categorias B direita, pizza A esquerda  ... esquerda primeiro , direita depois*/

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id  WHERE descricao LIKE "%doce%";