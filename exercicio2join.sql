CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Salgadas"),
("Doces");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
dtvalidade date,
preco decimal(7,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Mussarela", "2022-05-25", "31.99", 1);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Calabresa", "2022-05-06", "29.99", 1);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Chocolate", "2022-08-23", "35.00", 2);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Portuguesa", "2022-06-25", "49.99", 1);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Prestigio", "2022-11-10", "32.99", 2);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Sensação", "2022-01-05", "55.00", 2);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Frango com catupiry", "2022-12-25", "37.99", 1);

INSERT INTO tb_pizzas (sabor, dtvalidade, preco, categoria_id)
VALUES ("Pepperoni", "2022-09-08", "33.99", 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%O%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.id = 1;


