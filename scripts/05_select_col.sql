-- Manipulação básica de colunas numéricas
SELECT 
    idCliente, 
    QtdePontos + 10 AS QtdPontosPlus10,
    QtdePontos * 2 AS QtdPontosPlus2Multi,
    DtCriacao
FROM clientes;

-- Conversão e extração de datas usando funções
SELECT 
    idCliente, 
    DtCriacao,
    datetime(DtCriacao) AS DataHora,
    substr(DtCriacao, 1, 10) AS Data,
    datetime(substr(DtCriacao, 1, 19)) AS DataNormalizada,
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana
FROM clientes;


