CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255),
idade integer(5),
nota decimal (7.2),
primary key (id)
);

INSERT INTO tb_alunos(nome, idade, nota) VALUES("João", "10", "9.50");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Maria", "13", "8.00");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Vinicius", "12", "5.50");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Felipe", "11", "10.00");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Cintia", "14", "3.10");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Vanessa", "18", "6.70");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Rafael", "20", "9.00");
INSERT INTO tb_alunos(nome, idade, nota) VALUES("Leandro", "15", "6.00");

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota >7.00;
SELECT * FROM tb_alunos WHERE nota <7.00;

UPDATE tb_alunos SET nota = 6.00 WHERE id = 7;

