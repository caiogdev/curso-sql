SELECT nome, edicao FROM livros;

SELECT nome, sobrenome, cpf FROM pessoas;

SELECT cpf, nome, sobrenome FROM pessoas;

SELECT nome, edicao, 10 FROM livros;

SELECT nome, edicao, 'Ótimo' FROM livros;

SELECT nome, sobrenome, 10, 'Trabalho' FROM pessoas;

# Select Distinct
SELECT DISTINCT edicao FROM livros;

SELECT DISTINCT edicao, nome FROM livros;

SELECT DISTINCT sobrenome FROM pessoas;

SELECT DISTINCT sobrenome, nome FROM pessoas;

# Select Limit
SELECT * FROM livros LIMIT 4;

SELECT nome, sobrenome FROM pessoas LIMIT 10;

# Selecionar Colunas com valores Crescentes ou Decrescentes
# ASC -> crescente (padrão)
# DESC -> decrescente
SELECT nome, preco FROM livros ORDER BY nome;

# Ordenando por edição
SELECT nome, edicao FROM livros ORDER BY 2;
SELECT nome, edicao FROM livros ORDER BY edicao;

# Ordenando primeiro a edição, depois o nome como der
SELECT nome, edicao FROM livros ORDER BY edicao, nome;

SELECT nome, edicao FROM livros ORDER BY nome, edicao;
SELECT nome, edicao FROM livros ORDER BY 2, 1;

SELECT nome, edicao FROM livros ORDER BY edicao DESC;

SELECT nome, edicao FROM livros ORDER BY nome DESC;

# edição crescente e nome decrescente
SELECT nome, edicao FROM livros ORDER BY edicao ASC, nome DESC;
SELECT nome, edicao FROM livros ORDER BY 2, 1 DESC;

SELECT nome, edicao FROM livros ORDER BY 2 DESC, 1 ASC;

# Desafios
SELECT nome, sobrenome FROM pessoas ORDER BY 1;

SELECT sobrenome, nome FROM pessoas ORDER BY 1;

SELECT nome, sobrenome FROM pessoas ORDER BY 1 DESC;

SELECT nome, sobrenome, cpf FROM pessoas ORDER BY 1, cpf DESC;
