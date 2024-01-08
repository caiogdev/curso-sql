# LIKE
#                                  não é case sensitive
SELECT * FROM livros WHERE nome LIKE 'o nome %';

# Não é a mesma coisa, ele irá procurar um % na pesquisa
SELECT * FROM livros WHERE nome = 'o nome %';

SELECT * FROM livros WHERE nome LIKE 'o%o';

SELECT * FROM livros WHERE nome LIKE '% vento';

SELECT * FROM livros WHERE nome LIKE 'o%ger';

SELECT * FROM livros WHERE nome LIKE 'O%nome%vento';


# Desafios
# 1
SELECT * FROM livros WHERE nome LIKE 'harry %';

SELECT * FROM livros WHERE nome LIKE '%arry%';

# 2
SELECT * FROM livros WHERE nome LIKE '% silencio';
SELECT * FROM livros WHERE nome LIKE '% sil%ncio';

# Caracteres coringas
# % -> nenhum, 1 ou muitos caracteres
# _ -> exatamente 1 caractere -> especial, numero, underline, letra

SELECT * FROM livros WHERE nome LIKE '_%'; # Ao menos 1 caractere

SELECT * FROM livros WHERE nome LIKE '_ %'; # Começa com apenas 1 caractere

SELECT * FROM livros WHERE nome LIKE '____________'; # livros com exatamente 12 caracteres

# Desafio
# retornar livros que começam com 3 letras na primeira palavra,
# e o resto não importa
SELECT * FROM livros WHERE nome LIKE '___ %';

