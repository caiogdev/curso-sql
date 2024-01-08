SELECT * FROM livros WHERE nome REGEXP 'Or'; # não é Case Sensitive
SELECT * FROM livros WHERE nome RLIKE 'Or'; # não é Case Sensitive

SELECT * FROM livros WHERE nome REGEXP '^h'; # Começa com 'h'

SELECT * FROM livros WHERE nome REGEXP 'io$'; # Termina com 'io'

# Desafios
SELECT nome FROM pessoas WHERE nome REGEXP "gu";

SELECT sobrenome FROM pessoas WHERE sobrenome REGEXP "^c";

SELECT sobrenome FROM pessoas WHERE sobrenome RLIKE "^c";

SELECT sobrenome FROM pessoas WHERE sobrenome RLIKE "so$";

# Parte 2

# livro que tenha em algum lugar 'm' seguido de 'a','e' ou 'u'
SELECT * FROM livros WHERE nome RLIKE 'm[aeu]';

# livro que NÃO tenha em algum lugar 'm' seguido de 'a','e' ou 'u'
SELECT * FROM livros WHERE nome RLIKE 'm[^aeu]';

SELECT * FROM livros WHERE nome RLIKE 'm[^aeu]';

# Desafio
SELECT nome FROM pessoas WHERE nome RLIKE 'c[aeiou]';

SELECT sobrenome FROM pessoas WHERE sobrenome RLIKE 'r[^iu]';

# Parte 3
SELECT * FROM livros WHERE nome REGEXP 'a[a-z]';

# 'a' seguido de algo que não seja letra
SELECT * FROM livros WHERE nome REGEXP 'a[^a-z]';

# Desafio
SELECT sobrenome FROM pessoas WHERE sobrenome REGEXP 'c[a-z]';