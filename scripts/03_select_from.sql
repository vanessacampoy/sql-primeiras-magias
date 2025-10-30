-- Pré-visualiza os dados da tabela produtos
SELECT * FROM produtos LIMIT 10;

-- Seleciona apenas a categoria, filtrando registros iguais a 'rpg'
SELECT 
    DescCategoriaProduto
FROM produtos
WHERE DescCategoriaProduto = 'rpg';

