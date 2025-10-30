 
-- Top 10 clientes com mais pontos
SELECT *
FROM clientes
ORDER BY qtdePontos DESC
LIMIT 10;

-- Clientes Twitch, ordenados por criação e pontos
SELECT 
    idCliente,
    DtCriacao, 
    QtdePontos,
    FlTwitch
FROM clientes
WHERE FlTwitch = 1
ORDER BY DtCriacao, QtdePontos DESC
LIMIT 10;
