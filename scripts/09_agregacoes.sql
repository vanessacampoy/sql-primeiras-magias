-- Count básico
SELECT count(*) 
FROM clientes;

-- Count com filtro de data
SELECT count(*)
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31';

-- Count distinto
SELECT count(DISTINCT idCliente)
FROM clientes;

SELECT count(DISTINCT DescCategoriaProduto)
FROM produtos;

-- Valores únicos de flEmail
SELECT DISTINCT FlEmail
FROM clientes;

-- Soma de pontos positivos
SELECT 
    SUM(QtdePontos) AS QtdePontos_Positiva
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
AND QtdePontos > 0;

-- Soma de pontos negativos
SELECT 
    SUM(QtdePontos) AS QtdePontos_Negativa
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
AND QtdePontos < 0;

-- Soma total + soma separada via CASE
SELECT
    SUM(QtdePontos) AS qtdePontos,
    SUM(CASE WHEN QtdePontos > 0 THEN QtdePontos END) AS QtdePontosPositivos,
    SUM(CASE WHEN QtdePontos < 0 THEN QtdePontos END) AS QtdePontosNegativos
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31';

-- Estatísticas de clientes
SELECT 
    ROUND(AVG(qtdePontos), 2) AS mediaPontos,
    MIN(qtdePontos) AS minPontos,
    MAX(qtdePontos) AS maxPontos,
    COUNT(CASE WHEN flTwitch = 1 THEN flTwitch END) AS flTwitchtrue,
    SUM(flTwitch) AS totalTwitch
FROM clientes;
