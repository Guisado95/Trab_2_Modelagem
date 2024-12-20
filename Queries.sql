
-- Inserção de Dados:

INSERT INTO Visitantes (nome, data_nascimento, email) VALUES
('Guilherme', '01/12/1995', 'guilherme@gmail.com'),
('Francisco', '26/09/1989', 'francisco@gmail.com'),
('Graça', '01/09/1961', 'graca@gmail.com'),
('Maria', '06/04/2010', 'maria@gmail.com');

INSERT INTO Atracao (nome, tipo, capacidade) VALUES
('Barco Viking', 'radical', 40),
('Montanha Russa', 'radical', 80),
('Piscina de Bolinha', 'infantil', 5),
('Pula-Pula', 'altura', 1);

INSERT INTO Ingresso (Visitantes_id, Atracao_id, data_visita) VALUES
(1, 1, '10/12/2024'),
(1, 2, '10/12/2024'),
(1, 4, '10/12/2024'),
(2, 1, '10/12/2024'),
(2, 2, '10/12/2024'),
(3, 1, '11/12/2024'),
(3, 2, '11/12/2024'),
(4, 3, '12/12/2024'),
(4, 4, '12/12/2024');

INSERT INTO Funcionario (nome, cargo, salario, Atracao_id) VALUES
('Roberto', 'Faxineiro', 1800, 1),
('Adalberto', 'Operador', 2800, 1),
('Javair', 'Operador', 2800, 2),
('Edvaldo', 'Operador', 2800, 4),
('Felipe', 'Supervisor Infantil', 2200, 3);

-- Consultas Simples:

SELECT * FROM Visitantes;
SELECT * FROM Atracao;

-- Consultas com Filtros (WHERE):

SELECT V.id, V.nome, V.data_nascimento, V.email
FROM Visitantes V
JOIN Ingresso I ON V.id = I.Visitantes_id
WHERE I.Atracao_id = 1;

SELECT F.id, F.nome, F.cargo, F.salario, A.nome AS atracao_nome
FROM Funcionario F
JOIN Atracao A ON F.Atracao_id = A.id
WHERE F.salario > 3000;

-- Consultas com Ordenação (ORDER BY):

SELECT * FROM Visitantes ORDER BY nome;
SELECT * FROM Atracao ORDER BY capacidade DESC;

-- Consultas com Funções Básicas:

SELECT AVG(salario) AS media_salarial FROM Funcionario;
SELECT MAX(data_visita) AS data_mais_recente FROM Ingresso; 

-- Consultas com manipulação de data e hora:

SELECT * FROM Visitantes WHERE data_nascimento < '01/01/2000';
SELECT nome, data_nascimento, EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade FROM Visitantes;
