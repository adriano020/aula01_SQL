-- Cria o banco de dados loja
CREATE DATABASE loja;

-- Mostra todos os bancos do servidor
SHOW DATABASES;

-- Escolhe o banco que vamos usar
USE loja;

CREATE TABLE cliente(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE produto(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL UNIQUE
);

CREATE TABLE pedido(
	id INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    cliente_id int NOT NULL,
    produto_id int NOT NULL,
    FOREIGN KEY (cliente_id)
    REFERENCES cliente(id),
    FOREIGN KEY (produto_id)
    REFERENCES produto(id)
);

-- Acrescenta coluna em tabelas existentes
ALTER TABLE cliente ADD telefone VARCHAR(20);

-- Mostra todas as informações das tabelas
SELECT * FROM cliente;

-- Alterar o nome de uma coluna que está incorreta
ALTER TABLE cliente CHANGE telefone celulares VARCHAR(100);

-- Aumenta ou diminui o tipo de dados colocados anteriormente
ALTER TABLE cliente MODIFY celulares VARCHAR(20) NOT NULL;

-- Remove a coluna celulares
ALTER TABLE cliente DROP COLUMN celulares;

-- Apaga uma tabela
DROP TABLE (..nome da tabela..);

-- Apaga o banco de dados
DROP DATABASE (..nome da loja..);