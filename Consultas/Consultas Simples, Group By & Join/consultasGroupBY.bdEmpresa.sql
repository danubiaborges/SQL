-- Retorne a quantidade de funcionários que possuem @unifei no email
SELECT COUNT(email)
FROM funcionario
WHERE email LIKE '%\@unifei%';

-- Retorne a soma de horas trabalhadas em todos os projetos
SELECT SUM(horas)
FROM alocacao;

-- Retorne a soma de horas trabalhadas em todos os projetos no ano de 2020
SELECT SUM(horas)
FROM alocacao
WHERE datai > '2019/12/31' AND datai < '2021/01/01';

-- Retorne a quantidade de funcionários por departamento
SELECT COUNT (*) FROM funcionario
GROUP BY (coddept);

-- Retorne a soma da quantidade de horas por projeto
SELECT SUM (horas) FROM alocacao
GROUP BY (codp);

-- Retorne a soma da quantidade de horas por projetos, somente para aqueles cuja soma > 40
SELECT SUM(horas)
FROM alocacao
GROUP BY(codp)
HAVING SUM(horas) > '40:00:00';

-- Retorne a soma da quantidade de horas por projetos, somente para aqueles que iniciaram em 2020 e cuja soma > 40
SELECT SUM(horas)
FROM alocacao
WHERE datai > '2019/12/31'
GROUP BY(codp)
HAVING SUM(horas) > '40:00:00';