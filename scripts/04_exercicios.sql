-- Selecione todos os clientes com e-mail cadastrado (91 clintes)
SELECT 
    *
FROM clientes
WHERE flEmail = 1;

-- Selecione todas as transacoes de 50 pontos exatos (36483)
SELECT 
    *
FROM transacoes 
WHERE QtdePontos = 50;

-- Selecione todos os clientes com mais de 500 pontos (816)
SELECT 
    idCliente, qtdePontos
FROM clientes
WHERE qtdePontos > 500
ORDER BY qtdePontos DESC;

-- Selecione todos os produtos que contêm 'churn' no nome ()
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%churn%';


-- Alternativa usando comparação exata
SELECT *
FROM produtos
WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');