SET foreign_key_checks = 0;

DELETE FROM categoria;
DELETE FROM pessoa;
DELETE FROM permissao;
DELETE FROM usuario;
DELETE FROM usuario_permissao;
DELETE FROM lancamento;

SET foreign_key_checks = 1;

ALTER TABLE categoria AUTO_INCREMENT = 1;
ALTER TABLE pessoa AUTO_INCREMENT = 1;
ALTER TABLE permissao AUTO_INCREMENT = 1;
ALTER TABLE usuario AUTO_INCREMENT = 1;
ALTER TABLE usuario_permissao AUTO_INCREMENT = 1;
ALTER TABLE lancamento AUTO_INCREMENT = 1;

INSERT INTO categoria (id, nome) VALUES (1, 'Alimentação');
INSERT INTO categoria (id, nome) VALUES (2, 'Recebimentos via PIX');
INSERT INTO categoria (id, nome) VALUES (3, 'Boleto Bancário');

INSERT INTO pessoa (id, nome, endereco_logradouro, endereco_numero, endereco_complemento, endereco_bairro, endereco_cep, endereco_cidade, endereco_estado, ativo) VALUES (1, 'Alex', 'Rua Teste', 'SN', 'Ap. 1204', 'Alphaville', '00000-00', 'Joinville', 'Santa Catarina', TRUE);
INSERT INTO pessoa (id, nome, endereco_logradouro, endereco_numero, endereco_complemento, endereco_bairro, endereco_cep, endereco_cidade, endereco_estado, ativo) VALUES (2, 'Mickaela', 'Rua Teste', 'SN', 'Ap. 1204', 'Alphaville', '00000-00', 'Joinville', 'Santa Catarina', TRUE);
INSERT INTO pessoa (id, nome, endereco_logradouro, endereco_numero, endereco_complemento, endereco_bairro, endereco_cep, endereco_cidade, endereco_estado, ativo) VALUES (3, 'Mateus', 'Rua Teste', 'SN', 'Ap. 1204', 'Alphaville', '00000-00', 'Joinville', 'Santa Catarina', TRUE);

INSERT INTO permissao (id, descricao) VALUES (1, 'Adicionar e Excluir Lançamentos');
INSERT INTO permissao (id, descricao) VALUES (2, 'Gerar relatórios');
INSERT INTO permissao (id, descricao) VALUES (3, 'Adicionar Lançamentos');

INSERT INTO usuario (id, nome, email, senha) VALUES (1, 'Master', 'alex@email.com', '1234');
INSERT INTO usuario (id, nome, email, senha) VALUES (2, 'Admin', 'mickaela@email.com', '1234');
INSERT INTO usuario (id, nome, email, senha) VALUES (3, 'Suporte', 'mateus@email.com', '1234');

INSERT INTO usuario_permissao (usuario_id, permissao_id) VALUES (1, 1);
INSERT INTO usuario_permissao (usuario_id, permissao_id) VALUES (1, 2);
INSERT INTO usuario_permissao (usuario_id, permissao_id) VALUES (2, 3);
INSERT INTO usuario_permissao (usuario_id, permissao_id) VALUES (3, 2);

INSERT INTO lancamento (id, descricao, data_vencimento, data_pagamento, valor, observacao, tipo, categoria_id, pessoa_id) VALUES (1, 'Internet', '2025-02-20', '2025-02-17', 173.99, null, 'DESPESA', 3, 1);
INSERT INTO lancamento (id, descricao, data_vencimento, data_pagamento, valor, observacao, tipo, categoria_id, pessoa_id) VALUES (2, 'Adiantamento Salarial', '2025-02-20', '2025-02-20', 1200.00, null, 'RECEITA', 2, 1);
INSERT INTO lancamento (id, descricao, data_vencimento, data_pagamento, valor, observacao, tipo, categoria_id, pessoa_id) VALUES (3, 'Lanche', '2025-02-16', '2025-02-16', 110.00, null, 'DESPESA', 1, 2);