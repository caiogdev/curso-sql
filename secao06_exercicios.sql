# 1
SELECT *
FROM livros
WHERE 1 = 1
AND edicao = 1 OR edicao = 4;


SELECT *
FROM livros
WHERE 1 = 1
AND qtd_estoque > 100 
AND (edicao = 1 OR edicao = 4);

# 2
SELECT *
FROM livros
WHERE 1 = 1
AND NOT edicao <= 5
OR NOT qtd_estoque > 100;

SELECT *
FROM livros
WHERE 1 = 1
AND edicao > 5 
OR qtd_estoque <= 100;

SELECT *
FROM livros
WHERE 1 = 1
AND NOT (edicao <= 5 AND qtd_estoque > 100);

# Entendendo a negação do OR
# NOT(c1) or NOT(c2) ==== NOT(c1 AND c2) ==== c1$ OR c2$

# 3
SELECT *
FROM livros
WHERE 1 = 1
AND NOT qtd_estoque >= 100
AND NOT (format(dt_expedicao, '%Y') > '2015');

# ou...
SELECT *
FROM livros
WHERE 1 = 1
AND NOT (qtd_estoque >= 100 OR format(dt_expedicao, '%Y') > '2015');





