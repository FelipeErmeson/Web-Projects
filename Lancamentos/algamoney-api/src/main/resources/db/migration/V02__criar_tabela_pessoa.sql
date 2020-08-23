CREATE TABLE pessoa(
    codigo BIGINT (20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    ativo BOOLEAN NOT NULL,
    logradouro VARCHAR (255),
    numero VARCHAR (255),
    complemento VARCHAR (255),
    bairro VARCHAR (255),
    cep VARCHAR (255),
    cidade VARCHAR (255),
    estado VARCHAR (255)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Felipe Lima', TRUE, 'Rua A', '05', NULL, 'Bela Vista', '63210000', 'Mauriti', 'CE');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Mateus Silva', FALSE, 'Rua B', '25', NULL, 'Bela Vista', '69210000', 'Rio de Janeiro', 'RJ');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Maria Oliveira', FALSE, 'Rua C', '80', NULL, 'Bela Vista', '23210000', 'São Paulo', 'SP');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('José Martins', TRUE, 'Rua D', '90', NULL, 'Bela Vista', '36210000', 'João Pessoa', 'PB');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Quinca Barros', TRUE, 'Rua E', '100', NULL, 'Bela Vista', '65310000', 'Minas Gerais', 'MG');
INSERT INTO pessoa (nome, ativo) VALUES ('Luis Silva', TRUE);
INSERT INTO pessoa (nome, ativo) VALUES ('Jonas Teixeira', FALSE);