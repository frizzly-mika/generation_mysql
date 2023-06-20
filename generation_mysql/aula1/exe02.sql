CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    tipo varchar(255) not null,
    genero varchar(255) not null,
    autor varchar(255) not null,
    preco decimal(7,2) not null,
	qtd int,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Divina Comédia", "Livro", "Poesia Épica", "Dante Alighieri", 126.37, 2);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Judas, o Obscuro", "Livro", "Novela", "Thomas Hardy", 42.06, 5);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Os Livros Negros", "Livro", "Psicologia Analítica", "Carl Gustav Jung", 1999, 3);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("O Livro Vermelho", "Livro", "Psicologia Analítica", "Carl Gustav Jung", 1099, 1);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Os Miseráveis", "Livro", "Clássico de Ficção", "Victor Hugo", 112.17, 10);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Escrever Para Não Enlouquecer", "Livro", "Livros de Ensaios e Correspondências", "Charles Bukowski", 129, 4);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Os Irmãos Karamazóv", "Livro", "Clássico da Literatura Mundial", "Fiodór Dostoiévski", 120.99, 2);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("David Copperfield", "Livro", "Clássico de Ficção", "Charles Dickens", 49.90, 1);

INSERT INTO tb_produtos(nome, tipo, genero, autor, preco, qtd) 
values ("Guerra e Paz", "Livro", "Clássico da Literatura Mundial", "Leon Tolstói", 111.88, 4);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 69.99 WHERE id = 5;
UPDATE tb_produtos SET genero = "Promoção" WHERE id = 5;

SELECT * FROM tb_produtos;