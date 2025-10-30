
-- Soma de pontos e quantidade de transações por cliente no mês de julho
-- HAVING filtra os grupos após o agrupamento
SELECT 
    idCliente,
    SUM(QtdePontos) AS qtdPontos,
    COUNT(idTransacao) AS qtdTransacao
FROM transacoes
WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY idCliente
HAVING qtdPontos >= 4000
ORDER BY qtdPontos DESC;

