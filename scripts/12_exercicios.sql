-- Verificação rápida da estrutura das tabelas
SELECT * FROM clientes LIMIT 10;
SELECT * FROM transacoes LIMIT 10;

-- Quantidade de clientes com e-mail cadastrado
SELECT 
    COUNT(flEmail) AS QtdEmailCadastrados
FROM clientes
WHERE flEmail = 1
GROUP BY flEmail;

-- Cliente que mais juntou pontos positivos em maio de 2025
SELECT 
    IdCliente,
    SUM(QtdePontos) AS QtdePontos
FROM transacoes
WHERE DtCriacao BETWEEN '2025-05-01' AND '2025-05-31'
  AND QtdePontos > 0
GROUP BY IdCliente
ORDER BY QtdePontos DESC
LIMIT 1;

-- Cliente com maior número de transações em 2024
SELECT 
    IdCliente,    
    COUNT(IdTransacao) AS QtdTransacoes
FROM transacoes
WHERE DtCriacao BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY IdCliente
ORDER BY QtdTransacoes DESC
LIMIT 1;

-- Quantidade de produtos com categoria 'rpg'
SELECT 
    DescCategoriaProduto,
    COUNT(DescCategoriaProduto) AS Qtd
FROM produtos
WHERE DescCategoriaProduto = 'rpg'
GROUP BY DescCategoriaProduto;

-- Média de pontos positivos por dia
SELECT 
    SUM(QtdePontos) AS totalPontos,
    COUNT(DISTINCT substr(DtCriacao,1,10)) AS qtdeDiasUnicos,
    SUM(QtdePontos) * 1.0 / COUNT(DISTINCT substr(DtCriacao,1,10)) AS avgPontos
FROM transacoes
WHERE QtdePontos >= 1;

-- Dia da semana com mais pedidos no ano de 2025
-- strftime('%w') retorna: 0 domingo ... 6 sábado
SELECT 
    strftime('%w', substr(DtCriacao,1,10)) AS diaSemana,
    COUNT(DISTINCT IdTransacao) AS qtdeTransacao
FROM transacoes
WHERE DtCriacao BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY diaSemana;

-- Produto mais transacionado (maior volume de linhas na tabela)
SELECT 
    IdProduto,
    COUNT(*) AS qtdProduto
FROM transacao_produto
GROUP BY IdProduto
ORDER BY qtdProduto DESC
LIMIT 1;

-- Produto com maior soma de pontos transacionados
SELECT 
    IdProduto,
    SUM(vlProduto) AS qtdPontos
FROM transacao_produto
GROUP BY IdProduto
ORDER BY qtdPontos DESC
LIMIT 1;
