-- Prévia da tabela
SELECT *
FROM transacao_produto
LIMIT 10;

-- Contagem do produto com ID 5
SELECT count(*)
FROM transacao_produto
WHERE IdProduto = 5;

-- Ranking de produtos por volume de transações
SELECT 
    IdProduto, 
    count(*) AS QtdProduto
FROM transacao_produto
GROUP BY IdProduto
ORDER BY QtdProduto DESC;

-- Cliente que mais juntou pontos no mês de julho
-- OBS: A tabela clientes não guarda pontuação por transação, então o somatório por cliente aqui não faz sentido
SELECT 
    idCliente,
    SUM(qtdePontos) AS qtdPontos
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY idCliente
ORDER BY qtdPontos DESC;

-- Total de pontos e quantidade de transações por cliente
SELECT 
    idCliente,
    SUM(QtdePontos) AS qtdPontos,
    COUNT(idTransacao) AS qtdTransacao
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY idCliente
ORDER BY qtdPontos DESC;
