CREATE DATABASE aula;
USE aula;

CREATE TABLE cidades (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    populacao INT
    
);

CREATE TABLE alunos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id int,
     FOREIGN KEY (cidade_id) 
     REFERENCES cidades(id)
    
);

INSERT INTO cidades(id, nome, populacao)
values 
  (1, 'sorocaba', 400000),
 (2, 'itu', 170000),
 (3, 'campinas', 20000),
 (4, 'indaiatuba', 80000);
 
INSERT INTO alunos(nome, data_nasc, cidade_id)
VALUES 
 ('bia', '2005-06-03', 1),
 ('joao', '1996-08-07', 2),
 ('maria', '2005-09-03', 1),
 ('jose', '1997-11-02', 2),
 ('antonio', '2008-12-23', 2),
 ('fatima', '1997-12-08', NULL),
 ('carlao', '2005-03-12', 2),
 ('betao', '2001-07-11', 2);

SELECT * FROM alunos JOIN cidades 
ON alunos.cidade_id = cidades.id;

SELECT * FROM alunos LEFT JOIN cidades 
ON alunos.cidade_id = cidades.id;

SELECT * FROM alunos RIGHT JOIN cidades 
ON alunos.cidade_id = cidades.id;

SELECT * FROM alunos INNER JOIN cidades 
ON alunos.cidade_id = cidades.id;

 

