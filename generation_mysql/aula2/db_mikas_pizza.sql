CREATE DATABASE db_mikas_pizza;
USE db_mikas_pizza;

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    massa_tipo varchar(255) not null,
    preco decimal(6,2) not null,
    PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) not null,
    fatias int not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, fatias)
values("A la carte", 4);
INSERT INTO tb_categorias(tipo, fatias)
values("Artesanal", 4);
INSERT INTO tb_categorias(tipo, fatias)
values("Artesanal", 6);
INSERT INTO tb_categorias(tipo, fatias)
values("A la carte", 6);
INSERT INTO tb_categorias(tipo, fatias)
values("A la carte", 8);
INSERT INTO tb_categorias(tipo, fatias)
values("Artesanal", 8);

ALTER TABLE tb_pizzas ADD categoria_id bigint;    

INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Calabresa", "Molho de tomate, mozzarela, azeitona preta, calabresa, cobola roxa e orégano",
"Fina", 65.90, 6);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Marguerita", "Molho de tomate, mozzarela, tomate e manjericão fresco",
"Fina", 28.90, 2);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Pepperoni", "Molho de tomate, mozzarela, balsâmico, cebola e orégano",
"Tradicional", 54.90, 5);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Mozzarela", "Molho de tomate, mozzarela e orégano",
"Fina", 42.90, 3);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Marinara", "Molho de tomate, mozzarela, tomate, pimenta calabresa, manjericão fresco, alho e tomilho",
"Fina", 37.90, 4);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Quatro Queijos", "Molho de tomate, mozzarela, gorgonzola, parmesão, catupiry, alho e azeite",
"Tradicional", 26.90, 1);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Tomate Seco com Rúcula", "Molho de tomate, mozzarela, tomate seco, parmesão e rúcula fresca",
"Tradicional", 46.90, 5);
INSERT INTO tb_pizzas(nome, descricao, massa_tipo, preco, categoria_id)
values("Pizza Frango com Catupiry", "Molho de tomate, mozzarela, peiro de frango, catupiry e orégano",
"Fina", 65.90, 6);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizza_categoria
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tipo = "A la carte";