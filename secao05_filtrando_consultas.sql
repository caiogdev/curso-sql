SELECT nome, edicao FROM livros WHERE edicao = 1;

SELECT nome, preco FROM livros WHERE edicao = 1;

# Não é Case Sensitive
SELECT nome, preco FROM livros WHERE nome = 'O nome do vento';

SELECT nome, preco FROM livros WHERE nome = 'O Nome do vento';

SELECT nome, edicao FROM livros WHERE edicao >= 5;

# Traz todos, pois condição é sempre verdadeira
SELECT nome, edicao FROM livros WHERE 1 = 1;

# Não traz nada pois condição é sempre falsa
SELECT nome, edicao FROM livros WHERE 1 = 0;

# Quebrando linhas da query
SELECT nome, edicao
FROM livros
WHERE 1 = 1;

# Desafio 
SELECT *
FROM pessoas
WHERE nome = 'Miguel';

# Segunda aula
SELECT * FROM livros WHERE round(preco, 2) = 40.34;

# Terceira aula - Datas
SELECT * FROM livros;

SELECT * FROM livros
WHERE dt_expedicao = '1999-04-28';

SELECT * FROM livros
WHERE dt_expedicao > '2001-04-20';

# Filtrando resultado pelo ano
SELECT * FROM livros
WHERE date_format(dt_expedicao, '%Y')  < '2001';
