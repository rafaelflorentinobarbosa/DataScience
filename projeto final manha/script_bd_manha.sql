-- DDL (Data Definition Language) CREATE, DROP, ALTER
DROP DATABASE projetodiario1;
CREATE DATABASE projetodiario1;
USE projetodiario1;

CREATE TABLE aluno(
	id int primary key auto_increment,
    ra char(8) NOT NULL UNIQUE
);

-- DML
TRUNCATE TABLE aluno;

INSERT INTO aluno(ra) VALUES('12345679');
INSERT INTO aluno(ra) VALUES('12345680');
INSERT INTO aluno(ra) VALUES('12345681');
INSERT INTO aluno(ra) VALUES('12345682');
INSERT INTO aluno(ra) VALUES('12345683');
INSERT INTO aluno(ra) VALUES('12345684');
INSERT INTO aluno(ra) VALUES('12345685');
INSERT INTO aluno(ra) VALUES('12345686');
INSERT INTO aluno(ra) VALUES('12345687');
INSERT INTO aluno(ra) VALUES('12345688');
INSERT INTO aluno(ra) VALUES('12345689');
INSERT INTO aluno(ra) VALUES('12345690');
INSERT INTO aluno(ra) VALUES('12345691');
INSERT INTO aluno(ra) VALUES('12345692');
INSERT INTO aluno(ra) VALUES('12345693');
INSERT INTO aluno(ra) VALUES('12345694');
INSERT INTO aluno(ra) VALUES('12345695');
INSERT INTO aluno(ra) VALUES('12345696');
INSERT INTO aluno(ra) VALUES('12345697');
INSERT INTO aluno(ra) VALUES('12345698');
INSERT INTO aluno(ra) VALUES('12345699');
INSERT INTO aluno(ra) VALUES('12345700');
INSERT INTO aluno(ra) VALUES('12345701');
INSERT INTO aluno(ra) VALUES('12345702');
INSERT INTO aluno(ra) VALUES('12345703');

-- DQL
SELECT * FROM aluno;
SELECT ra FROM aluno;
SELECT id,ra FROM aluno WHERE id <=6;
SHOW TABLES;

CREATE TABLE diariobordo(
	id INT PRIMARY KEY AUTO_INCREMENT,
    texto TEXT NOT NULL,
    datahora DATETIME NOT NULL,
    fk_aluno_id INT NOT NULL
);
SHOW TABLES;

ALTER TABLE diariobordo ADD CONSTRAINT fk_diariobordo_2
	FOREIGN KEY (fk_aluno_id)
	REFERENCES aluno(id)
	ON DELETE CASCADE;

SELECT * FROM diariobordo;

SELECT * FROM aluno ORDER BY id;
INSERT diariobordo(texto,datahora,fk_aluno_id)VALUES('Aula foi legal','2024-08-01 09:16:00',1);

SELECT * FROM 
	diariobordo 
    JOIN 
    aluno 
    ON diariobordo.fk_aluno_id = aluno.id;
 
SELECT 
	d.texto,
    d.datahora,
    a.ra
 FROM 
	diariobordo d
JOIN 
    aluno a
    ON d.fk_aluno_id = a.id;


/* 
-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliacao.
                                                      -- id pk
                                                      -- nota1 int
                                                      -- nota2 int
                                                      -- nota3 int
                                                      -- nota4 int
                                                      -- fk_aluno_id
-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTs de 5 alunos com as notas
-- SELECT * FROM avaliacao;
-- SELECT JOIN : tabela aluno com tabela avaliação.
*/

CREATE TABLE avaliacao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nota1 INT NOT NULL,
    nota2 INT NOT NULL,
    nota3 INT NOT NULL,
    nota4 INT NOT NULL,
    fk_aluno_id INT NOT NULL
);
SHOW TABLES;

SELECT * FROM avaliacao;

ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES(20,24,20,23,24);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES(22,23,22,22,23);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES(23,22,24,20,22);
INSERT INTO avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id) VALUES(24,21,21,24,21);

SELECT * FROM avaliacao;

SELECT * FROM 
	aluno a 
    JOIN 
    avaliacao av 
    ON av.fk_aluno_id = a.id;
    
    SELECT a.ra, av.nota1, av.nota2, av.nota3, av.nota4 FROM 
		avaliacao av  
    JOIN 
		aluno a
    ON av.fk_aluno_id = a.id;

