CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT, 
nome varchar(255) NOT NULL,
data_nascimento date,
cargo varchar(255),
salario decimal(7,2),
primary key (id) 
);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario) VALUES ("Joana", "1996-08-08", "Analista de Sistemas", "3000.00");
INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario) VALUES ("Mario", "2009-10-03", "Assistente Fiscal", 1500.00);
INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario) VALUES ("Felipe", "1995-07-09", "Dev Jr", "3500.00");
INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario) VALUES ("Alexandre", "1993-04-21", "Gerente", "10000.00");
INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario) VALUES ("Carla", "1998-08-23", "Analista de QA", "6000.00");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2500.00 WHERE id = 3; 

