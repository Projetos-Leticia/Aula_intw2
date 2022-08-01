CREATE DATABASE projetinho;

USE projetinho;

CREATE TABLE usuario (
id_usuario int PRIMARY KEY,
email varchar(255),
cpf varchar(14),
tipo int,
senha varchar(255),
nome varchar(255)
);

CREATE TABLE curriculo (
id_curr int PRIMARY KEY AUTO_INCREMENT,
email varchar(255),
curso varchar(255),
telefone varchar(14),
nome varchar(255)
);

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencia varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE habilidades (
id_hab int PRIMARY KEY AUTO_INCREMENT,
habilidade varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE educacao (
id_educ int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
fim date,
inicio date,
instituicao varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE experiencia (
id_exp int PRIMARY KEY AUTO_INCREMENT,
ocupacao varchar(255),
fim date,
inicio date,
empresa varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

