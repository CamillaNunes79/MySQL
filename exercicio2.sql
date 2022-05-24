CREATE DATABASE db_eletronicos;
USE db_eletronicos;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT, 
nome varchar(255) NOT NULL,
cor varchar(255),
preco decimal (7,2),
primary key (id)
);

INSERT INTO tb_produtos(nome, cor, preco) VALUES("celular", "preto", "2500.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("tablet","vermelho","900.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("notebook", "cinza", "3000.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("relógio digital", "preto", "1000.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("pc gamer","preto","9000.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("teclado", "branco", "500.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("mouse", "preto", "350.00");
INSERT INTO tb_produtos(nome, cor, preco) VALUES("monitor","preto","900.00");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >500.00;
SELECT * FROM tb_produtos WHERE preco <500.00;

UPDATE tb_produtos SET preco = 200.00 WHERE id = 4;





