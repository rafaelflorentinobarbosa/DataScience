DROP DATABASE projetodiario1;
-- CREATE: criar tabela, banco entre outros
CREATE DATABASE projetodiario1;
-- USE : usar o banco
USE projetodiario1;

-- criar uma tabela
CREATE TABLE aluno(  
    -- id chave primária e auto incremento (1,2,3,4......)
    -- único, universal e imutável
    -- não se repete, todo mundo depende dele, não muda
    id int primary key auto_increment,
    -- um limite de 8 caracteres, não nulo, não se repete.
    ra char(8) NOT NULL UNIQUE
); 
-- DML (Data Manipulation Languagem - Ling. Manip. de Dados
-- INSERT , DELETE , UPDATE
-- 
INSERT INTO aluno(ra) VALUES('12345670');
INSERT INTO aluno(ra) VALUES('12345671');
INSERT INTO aluno(ra) VALUES('12345672');
INSERT INTO aluno(ra) VALUES('12345673');
INSERT INTO aluno(ra) VALUES('12345674');
INSERT INTO aluno(ra) VALUES('12345675');
INSERT INTO aluno(ra) VALUES('12345676');
INSERT INTO aluno(ra) VALUES('12345677');
INSERT INTO aluno(ra)VALUES('12345678');
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

-- Pesquise todas as colunas (*) da tabela aluno
SELECT * FROM aluno;

-- Criar diário de bordo
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);

 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SELECT * FROM diariobordo;
describe diariobordo;
SELECT * FROM aluno;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou revisando com os colegas e o professor o conteúdo de ontem',
                                      '2024-08-01 16:27:00',
                                       6);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('sou vascaino estou triste',
                                      '2024-08-01 16:30:00',
                                       8);
                                       
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('a aula foi legal',
                                      '2024-08-01 09:16:00',
                                       13);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert',
                                      '2024-08-01 09:33:00',
                                       24);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert de novo',
                                      '2024-08-01 09:33:00',
                                       24);
SELECT * FROM aluno;
SELECT *  FROM diariobordo;
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


ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

truncate table aluno;
-- DQL
show tables;

-- Exercício


CREATE TABLE avaliacao (
    id int PRIMARY KEY,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int
);

ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;
    
    
    ALTER TABLE aluno
ADD COLUMN Nome VARCHAR(80),
ADD COLUMN Tempo_de_Estudo INT NOT NULL,
ADD COLUMN Renda_Media_Salarial_Familiar DECIMAL(10, 2);
describe aluno;
SELECT *FROM aluno;

    

    
    
    
    INSERT INTO aluno (ra, Nome, Tempo_de_Estudo, Renda_Media_Salarial_Familiar) VALUES 
('52345680', 'Ana Silva', 20, 1500.00),
('52345681', 'Carlos Oliveira', 25, 2000.00),
('52345682', 'Fernanda Costa', 30, 2500.00),
('52345683', 'Gabriel Santos', 22, 1800.00),
('52345684', 'Juliana Lima', 27, 2200.00),
('52345685', 'Lucas Pereira', 28, 2300.00),
('52345686', 'Mariana Alves', 21, 1600.00),
('52345687', 'Roberto Martins', 26, 2100.00),
('52345688', 'Sofia Almeida', 29, 2400.00),
('52345689', 'Thiago Ferreira', 23, 1900.00),
('52345690', 'Vera Oliveira', 24, 2000.00),
('52345691', 'William Rodrigues', 31, 2600.00),
('52345692', 'Xuxa Costa', 32, 2700.00),
('52345693', 'Yuri Castro', 33, 2800.00),
('52345694', 'Zara Martins', 34, 2900.00),
('52345695', 'Alan Silva', 35, 3000.00),
('52345696', 'Beatriz Lima', 36, 3100.00),
('52345697', 'Carlos Santos', 37, 3200.00),
('52345698', 'Daniela Almeida', 38, 3300.00),
('52345699', 'Eduardo Costa', 39, 3400.00),
('52345700', 'Flávia Pereira', 40, 3500.00),
('52345701', 'Gustavo Rocha', 41, 3600.00),
('52345702', 'Heloísa Fernandes', 42, 3700.00),
('52345703', 'Isabela Oliveira', 43, 3800.00),
('52345704', 'Jorge Almeida', 44, 3900.00),
('52345705', 'Karla Costa', 45, 4000.00),
('52345706', 'Leonardo Silva', 46, 4100.00),
('52345707', 'Marcelo Lima', 47, 4200.00),
('52345708', 'Natalia Castro', 48, 4300.00),
('52345709', 'Otávio Martins', 49, 4400.00),
('52345710', 'Patrícia Almeida', 50, 4500.00),
('52345711', 'Quinton Lima', 51, 4600.00),
('52345712', 'Roberta Costa', 52, 4700.00),
('52345713', 'Samuel Rodrigues', 53, 4800.00),
('52345714', 'Tatiane Santos', 54, 4900.00),
('52345715', 'Ulysses Pereira', 55, 5000.00),
('52345716', 'Valéria Silva', 56, 5100.00),
('52345717', 'Wellington Castro', 57, 5200.00),
('52345718', 'Xuxa Lima', 58, 5300.00),
('52345719', 'Yara Oliveira', 59, 5400.00),
('52345720', 'Zé Carlos Costa', 60, 5500.00),
('52345721', 'Amanda Santos', 61, 5600.00),
('52345722', 'Bruno Almeida', 62, 5700.00),
('52345723', 'Claudia Rocha', 63, 5800.00),
('52345724', 'Diego Ferreira', 64, 5900.00),
('52345725', 'Eliane Lima', 65, 6000.00),
('52345726', 'Felipe Santos', 66, 6100.00),
('52345727', 'Gabriela Costa', 67, 6200.00),
('52345728', 'Henrique Oliveira', 68, 6300.00),
('52345729', 'Igor Silva', 69, 6400.00);
