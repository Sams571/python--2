--Criando o banco de dados
CREATE DATABASE anafit;

--Criando primeira tabela
CREATE TABLE cliente(
    cpf BIGINT PRIMARY KEY,
    primeironome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    datanasc DATE NOT NULL,
    peso DECIMAL(5,2),
    altura FLOAT,
    email VARCHAR(100) UNIQUE NOT NULL
);

--Inserindo dado na tabela cliente

INSERT INTO cliente (
    cpf,
    primeironome,
    sobrenome,
    datanasc,
    peso,
    altura,
    email
) VALUES
(12345678901, 'Ana', 'Silvia', '1995-04-15', 62.50,1.65, 'ana.silva@email.com'),
(23456789012, 'Bruno', 'Souza', '1990-08-22', 78.20,1.80, 'bruno.souza@email.com');


--Read, lendo todos os dados cadastrados na tabela de cliente

SELECT * FROM cliente;

--Lendo dados só de uma coluna
SELECT email FROM cliente;

--Selecionar um Cli ente pelo nome 
SELECT*
FROM cliente
WHERE primeironome LIKE '%ana%';

--Selecionando um coluna de um cadastro específico
SELECT primeironome
FROM cliente
WHERE cpf = 12345678901;

--Update - alterando o peso de um cliente específico
UPDATE cliente
SET peso =  65.00
WHERE cpf = 12345678901;

--Cuidado com esse update - é um possível erro
UPDATE cliente
SET peso = 70.00;

--Delete excluído um dado específico da tabela
 Delete FROM cliente
WHERE cpf = 12345678901;

