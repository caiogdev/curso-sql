SELECT * FROM livros WHERE edicao IN (2, 4, 6, 8);
SELECT * FROM livros WHERE edicao NOT IN (2, 4, 6, 8);

-- qtd_estoque igual a 100, 120, 200 ou 60
SELECT * FROM livros WHERE qtd_estoque IN (100, 120, 200, 60);

SELECT * FROM livros WHERE nome IN ('O nome do vento', 'A música do silêncio', 'Words of Radiance', 'Harry Potter e o cálice de fogo');

# BETWEEN / AND
SELECT * FROM livros WHERE edicao BETWEEN 1 AND 5;

SELECT * FROM livros WHERE dt_expedicao BETWEEN '1990-01-01' AND '1995-04-25'; # inclui o último

SELECT * FROM livros WHERE date_format(dt_expedicao, "%Y") BETWEEN '1990' AND '2010';

# %M -> mês por extenso
SELECT nome, date_format(dt_expedicao, "%Y-%M") FROM livros WHERE date_format(dt_expedicao, "%Y-%m") BETWEEN '1990-01' AND '2010-06';
SELECT nome, date_format(dt_expedicao, "%Y-%m") FROM livros WHERE date_format(dt_expedicao, "%Y-%m") BETWEEN '1990-01' AND '2010-06';

# Desafio -> pessoas nascidas entre 1950 e 2010
SELECT nome, date_format(data_nascimento, "%Y") FROM pessoas WHERE date_format(data_nascimento, "%Y") BETWEEN '1950' AND '2010';


# AS