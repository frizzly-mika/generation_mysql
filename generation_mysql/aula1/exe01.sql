CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
	idade int,
	departamento varchar(255) not null,
	cargo varchar(255) not null,
	salario decimal(7,2) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, idade, departamento, cargo, salario) 
values("Armando Nogueira", 32, "Contabilidade", "Consultor Contábio", 6078);
INSERT INTO tb_colaboradores(nome, idade, departamento, cargo, salario) 
values("Ricardo Peixoto", 21, "Contabilidade", "Estagiário", 1266);
INSERT INTO tb_colaboradores(nome, idade, departamento, cargo, salario) 
values("Nathalia Pires", 24, "Marketing", "Marketing Specialist", 5651);
INSERT INTO tb_colaboradores(nome, idade, departamento, cargo, salario) 
values("Diógenes de Assis", 43, "Almoxarifado", "Almoxarife", 1900);
INSERT INTO tb_colaboradores(nome, idade, departamento, cargo, salario) 
values("Andressa Meireles", 34, "Admnistrativo", "Auxiliar Administrativo", 1800);

SELECT * FROM tb_colaboradores WHERE salario < 2000;
SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET salario = 2029 WHERE id = 2;
UPDATE tb_colaboradores SET cargo = "Auxiliar Contábil" WHERE id = 2;

SELECT * FROM tb_colaboradores;