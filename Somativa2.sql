DROP DATABASE IF EXISTS Somativa2;
CREATE DATABASE Somativa2;
USE Somativa2;

CREATE TABLE Regiao(
codRegiao BIGINT PRIMARY KEY, 
nomeRegiao VARCHAR(100),
descricaoRegiao TEXT);

CREATE TABLE Vinicola(
codVinicola BIGINT PRIMARY KEY,
nomeVinicola VARCHAR(100),
descricaoVinicola TEXT,
foneVinicola VARCHAR(15),
emailVinicola VARCHAR(15),
codRegiao BIGINT, 
FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);

CREATE TABLE Vinho(
codVinho BIGINT PRIMARY KEY,
nomeVinho VARCHAR(50),
tipoVinho VARCHAR(30),
anoVinho INT, 
descricaoVinho TEXT,
codVinicola BIGINT, 
FOREIGN KEY (codVinicola) REFERENCES Vinicola(codVinicola));

INSERT INTO Regiao(codRegiao, nomeRegiao, descricaoRegiao) VALUES
(1, 'Toscana', 'Regiao de Vinhos na Italia.'),
(2, 'Bordeaux', 'Regiao de Vinhos na Franca.'),
(3, 'Vale dos Vinhedos', 'Regiao de Vinhos no Brasil.'),
(4, 'Mendoza', 'Regiao de Vinhos na Argentina.'),
(5, 'Vina Concha y Toro', 'Regiao de Vinhos no Chile.');

INSERT INTO Vinicola(codVinicola, nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES
(1, 'Vinicola de Toscana', 'Maior produtora de vinhos de Toscana', '987654321', '@toscana.com', 1),
(2, 'Vinicola de Bordeaux', 'Produtora de vinhos Premium na Franca', '123456789', '@bordeaux.com', 2),
(3, 'Vinicola do Brasil', 'Melhor produtora de vinhos do Brasil', '45678901234', '@vale.com', 3),
(4, 'Vinicola da Argentina', 'Maior produtora de vinhos da Argentina', '78901234567', '@mendoza.com', 4),
(5, 'Vinicola do Chile', 'Melhor produtora de vinhos do Chile', '12343210987', '@concha.com', 5);

INSERT INTO Vinho(codVinho, nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES
(1, 'vinho da Toscana', 'tinto', 2013, 'Producao safra 2013', 1),
(2, 'vinho de Bourdeaux', 'branco', 2012, 'Safra de 2012', 2),
(3, 'vinho do Brasil', 'tinto seco', 2010, 'Safra de 2010', 3),
(4, 'vinho da Argentina', 'tinto malbec', 2024, 'Safra malbec 2024', 4),
(5, 'vinho do Chile', 'cabernet sauvignon tinto', 1997, 'Safra de 1997', 5);

SELECT nomeVinho, anoVinho, nomeVinicola, nomeRegiao FROM Vinho
INNER JOIN Vinicola ON Vinho.codVinicola = Vinicola.codVinicola
INNER JOIN Regiao ON Vinicola.codRegiao = Regiao.codRegiao;

CREATE USER 'Somellier'@'localhost' IDENTIFIED BY 'Somellier1'; 
GRANT SELECT ON Somativa2.Vinho TO 'Somellier'@'localhost'; 
GRANT SELECT (codVinicola, nomeVinicola) ON Somativa2.Vinicola TO 'Somellier'@'localhost';
ALTER USER 'Somellier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;





