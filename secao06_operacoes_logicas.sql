# NULL -> não possui valor, mas existe

SELECT * FROM livros WHERE edicao = NULL; # Não funciona

SELECT * FROM livros WHERE edicao IS NULL;

SELECT * FROM pessoas WHERE telefone IS NULL;

# OPERADORES AND, OR E NOT

# AND
SELECT *
FROM pessoas
WHERE 1 = 1
AND id_pessoa >= 5
AND funcionario = 1;

SELECT *
FROM livros 
WHERE edicao >= 2 
AND qtd_estoque < 100
LIMIT 2;

# OR
SELECT * 
FROM pessoas 
WHERE id_pessoa >= 12
OR funcionario = 1;

SELECT * 
FROM livros 
WHERE edicao = 5
OR qtd_estoque > 100;

# NOT
SELECT nome, qtd_estoque 
FROM livros 
WHERE qtd_estoque < 100;

# Usando o NOT
SELECT nome, qtd_estoque 
FROM livros 
WHERE NOT (qtd_estoque < 100);

SELECT * 
FROM pedidos
WHERE qtd_pedida < 5;

SELECT * 
FROM pedidos
WHERE NOT (qtd_pedida < 5);

# Selecionar valores não nulos
SELECT * 
FROM livros
WHERE NOT edicao IS NULL;

# Mesma coisa do query de cima
SELECT * 
FROM livros
WHERE edicao IS NOT NULL;



