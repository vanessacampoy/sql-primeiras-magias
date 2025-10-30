-- Seleção simples da tabela clientes para visualizar estrutura e dados iniciais
SELECT * FROM clientes;

-- Seleciona colunas específicas e limita a 10 linhas para inspeção rápida
SELECT 
    idCliente, qtdePontos, DtCriacao 
FROM clientes
LIMIT 10;

-- Consulta para observar criação e atualização de clientes
SELECT 
    idCliente, DtCriacao, DtAtualizacao
FROM clientes;

