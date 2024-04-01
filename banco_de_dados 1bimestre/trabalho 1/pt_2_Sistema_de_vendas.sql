INSERT INTO Clientes (Nome, Endereco, Email, Celular, Data_de_nascimento) VALUES
('Ana Julia', 'Rua das rosas, 123', 'anaoli.jps@gmail.com', '(11) 98521-6831', '2008-03-08'),
('André Merli', 'Avenida das crianças, 756', 'andremerli74@gmail.com', '(21) 98755-1834', '2016-03-20'),
('carmem', 'Rua dos bobos, 0', 'carmed@usp.br', '(11) 99835-5643', '1952-07-11'),
('Claudio Oliveira', 'Rua das Tilapias, 361', 'claudiomsi@hotmail.com', '(11) 98536-8765', '1998-01-25'),
('Daisy', 'Avenida dos rita lee, 694', 'daisyess@gmail.com', '(11) 99876-4331', '1975-07-08'),
('Daniel Abreu Guerra', 'Rua paris, 999', 'daniel.abr@hotmail.com', '(11) 99765-1284', '1997-11-03'),
('Diego Gregório Batista', 'Avenida dos mortos, 193', 'diego.gregb@hotmail.com', '(11) 94767-5678', '1982-12-18'),
('Fabio José', 'Rua lira cearense, 200', 'fabiosilvarodolpho@gmail.com', '(11) 92783-8765', '1920-07-30'),
('João Moura', 'Avenida brasil, 23', 'joaomoura.com@gmail.com', '(11) 94561-4391', '1995-05-12'),
('Larissa Reis', 'Rua tabajara, 71', '	larissareis@gmail.com', '(11) 98265-1244', '1999-03-02');

INSERT INTO Produtos (Nome, Preco, Descricao, Quantidade_em_estoque) VALUES
('croped', 39.90, 'Croped feminino', 60),
('Camiseta branca básica', 39.70, 'Camiseta branca básica', 29.),
('Blusa de frio cinza', 45.60, 'Blusa de frio cinza', 59),
('Vestido floral', 119.90, 'Vestido de festa longo', 40),
('Tênis Casual', 99.90, 'Tênis casual unissex', 80),
('Calça de moletom preta', 69.90, 'Calça de moletom preta', 118),
('Jaqueta de couro sintético', 129.90, 'Jaqueta de couro sintético', 67),
('Saia midi estampada ', 148.90, 'Saia midi estampada ', 37),
('Camisa social azul', 99.90, 'Camisa social azul', 26),
('Shorts jeans destroyed', 199.99, 'Shorts jeans destroyed', 63);

INSERT INTO Pedidos (ID_cliente, Data_de_compra, Valor_total, Data_estimada_de_entrega) VALUES
(9, '2024-03-20', 39.90, '2024-03-28'),
(8, '2024-03-21', 39.70, '2024-03-29'),
(7, '2024-03-22', 45.60, '2024-03-30'),
(6, '2024-03-23', 119.90, '2024-03-31'),
(5, '2024-03-24', 99.90, '2024-04-01'),
(3, '2024-03-25', 69.90, '2024-04-02'),
(4, '2024-03-26', 129.90, '2024-04-03'),
(1, '2024-03-27', 148.90, '2024-04-04'),
(2, '2024-03-28', 99.90, '2024-04-05'),
(32, '2024-03-29', 199.99, '2024-04-06');

INSERT INTO Itens_pedido (ID_pedido, ID_produto, Quantidade, Valor_unitario, Valor_total) VALUES
(11, 8, 1, 39.90, 39.90),
(22, 34, 1, 39.70, 39.70),
(34, 76, 1, 45.60, 45.60),
(43, 16, 1, 119.90, 119.90),
(56, 5, 1, 99.90, 99.90),
(65, 1, 1, 69.90,69.90),
(78, 91, 1, 129.90, 129.90),
(87, 3, 1, 148.90, 148.90),
(910, 7, 1, 99.90, 99.90),
(109, 18, 1, 199.99, 199.99);

-- Atualizar registros na tabela Clientes (exemplo: atualizar o email do cliente com ID_cliente = 10)
UPDATE Clientes
SET Email = 'anaoli.jps@gmail.com'
WHERE ID_cliente = 9;

-- Atualizar registros na tabela Produtos (exemplo: atualizar o preço do produto com ID_produto = 5)
UPDATE Produtos
SET Preco = 39.90
WHERE ID_produto = 8;

-- Atualizar registros na tabela Pedidos (exemplo: atualizar a data estimada de entrega do pedido com ID_pedido = 2)
UPDATE Pedidos
SET Data_estimada_de_entrega = '2024-03-29'
WHERE ID_pedido = 11;

-- Excluir registros na tabela Itens_pedido (exemplo: excluir todos os itens do pedido com ID_pedido = 1)
DELETE FROM Itens_pedido
WHERE ID_pedido = 11;

-- Excluir registros na tabela Pedidos (exemplo: excluir o pedido com ID_pedido = 5)
DELETE FROM Pedidos
WHERE ID_pedido = 11;