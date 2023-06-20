CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    jogo varchar(255) not null,
    poderAtq int not null,
    poderDfs int not null,
    PRIMARY KEY(id)
);

CREATE TABLE tb_classes(
	id bigint auto_increment,
    tipo varchar(255) not null,
    funcao varchar(255) not null,
    PRIMARY KEY(id)
    );
    
    INSERT INTO tb_classes(tipo, funcao)
    values ("Herói", "Lutador");
	INSERT INTO tb_classes(tipo, funcao)
    values ("Herói", "Mágico");
	INSERT INTO tb_classes(tipo, funcao)
    values ("Ant-Herói", "Lutador");
	INSERT INTO tb_classes(tipo, funcao)
    values ("Ant-Herói", "Mágico");    
	INSERT INTO tb_classes(tipo, funcao)
    values ("Vilão", "Lutador");
	INSERT INTO tb_classes(tipo, funcao)
    values ("Vilão", "Mágico");
    
    SELECT * FROM tb_classes;
    
    ALTER TABLE tb_personagens ADD classe_id bigint;
    
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Joker", "Batman: Arkham Asylum", 4000, 800, 5);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Robin", "Batman: Arkham Asylum", 2100, 1800, 1);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Batman", "Batman: Arkham Asylum", 5000, 4000, 1);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Harley Quinn", "Batman: Arkham Asylum", 1300, 200, 5);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Zsasz", "Batman: Arkham Asylum", 2000, 2000, 6);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Bane", "Batman: Arkham Asylum", 4000, 4000, 5);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Poison Ivy", "Batman: Arkham Asylum", 1500, 900, 6);
    INSERT INTO tb_personagens(nome, jogo, poderAtq, poderDfs, classe_id)
    values("Knight Robin", "Batman: Arkham Asylum", 2000, 2500, 3);
    
    ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagem_classe
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id);
    
    SELECT * FROM tb_personagens WHERE poderAtq > 2000;
    SELECT * FROM tb_personagens WHERE poderDfs BETWEEN 1000 AND 2000;
    SELECT * FROM tb_personagens WHERE nome LIKE "%e%";
    
    SELECT * FROM tb_personagens
    INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;
    
    SELECT * FROM tb_personagens
    INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tipo = "Herói";
    
    
    
