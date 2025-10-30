-- Prévia dos dados
SELECT 
    idCliente,
    qtdePontos
FROM clientes
LIMIT 10;

-- Classificação de clientes por pontuação e criação de categorias
SELECT 
    idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos <= 500 THEN 'Ponei'
        WHEN qtdePontos <= 1000 THEN 'Ponei Premium'
        WHEN qtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS Categoria,

    CASE WHEN qtdePontos <= 1000 THEN 1 ELSE 0 END AS FlPonei,
    CASE WHEN qtdePontos > 1000 AND qtdePontos <= 5000 THEN 1 ELSE 0 END AS FlMagoAprendiz,
    CASE WHEN qtdePontos > 5000 AND qtdePontos <= 10000 THEN 1 ELSE 0 END AS FlMagoMestre,
    CASE WHEN qtdePontos > 10000 THEN 1 ELSE 0 END AS FlMagoSupremo
FROM clientes
ORDER BY qtdePontos DESC;
