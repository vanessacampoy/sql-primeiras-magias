-- 1. Lista de transações com apenas 1 ponto
SELECT idTransacao, QtdePontos 
FROM transacoes
WHERE QtdePontos = 1;

-- 2. Transações feitas no fim de semana (sábado=6, domingo=0)
-- IMPORTANTE: não dá para usar o alias DiaSemana no WHERE, por isso repeti o cálculo
SELECT 
    idTransacao, 
    DtCriacao,
    strftime('%w', datetime(substr(DtCriacao,1,19))) AS DiaSemana
FROM transacoes
WHERE strftime('%w', datetime(substr(DtCriacao,1,19))) IN ('0','6');

-- 3. Clientes com 0 pontos
SELECT 
    idCliente,
    qtdePontos
FROM clientes
WHERE qtdePontos = 0;

-- 4. Clientes entre 100 e 200 pontos
SELECT
    idCliente,
    qtdePontos
FROM clientes
WHERE qtdePontos BETWEEN 100 AND 200
ORDER BY qtdePontos;

-- 5. Produtos cujo nome começa com "Venda de"
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE 'Venda de%';

-- 6. Produtos cujo nome termina com 'Lover'
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%Lover';

-- 7. Produtos de chapéu
SELECT *
FROM produtos 
WHERE DescNomeProduto LIKE '%chapéu%';

-- 8. Transações do produto com ID 15
SELECT * 
FROM transacao_produto 
WHERE IdProduto = 15;

-- 9. Classificação de transações por faixa de pontos
SELECT 
    IdTransacao,
    QtdePontos,
    CASE 
        WHEN QtdePontos < 10 THEN 'Baixo'
        WHEN QtdePontos < 500 THEN 'Médio'
        ELSE 'Alto'
    END AS Categoria
FROM transacoes
ORDER BY QtdePontos DESC;

-- Origem dos sistemas
SELECT DISTINCT 
    DescSistemaOrigem
FROM transacoes;










