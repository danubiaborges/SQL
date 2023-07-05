-- Retorne a soma de todas as horas trabalhadas.
SELECT SUM(horas) FROM trabalha_em;

-- Retorne a soma de todas as horas trabalhadas por projeto (número do projeto).
SELECT pnumero, SUM(horas) FROM trabalha_em
GROUP BY(pnumero);

-- Retorne a soma de todas as horas trabalhadas por empregado (ssn do empregado).
SELECT ssn, SUM(horas) FROM trabalha_em
GROUP BY(ssn);

-- Retorne a soma das horas trabalhadas por empregado (ssn) considerando somente aqueles que trabalharam mais de 12 horas.
SELECT ssn, SUM(horas)
FROM trabalha_em
GROUP BY ssn
HAVING SUM(horas) > '12:00:00';

-- Retorne o valor da quantidade máxima de horas trabalhadas.
SELECT MAX(horas) FROM trabalha_em;

-- Retorne o valor da quantidade máxima de horas trabalhadas por empregado.
SELECT ssn, MAX(horas)
FROM trabalha_em
GROUP BY(ssn);

-- Retorne o valor da quantidade máxima de horas trabalhadas no projeto de código P001.
SELECT MAX(horas)
FROM trabalha_em
WHERE pnumero = 'P001';

-- Retorne o código do departamento e a quantidade de funcionários de cada um.
SELECT numerodpto, COUNT(*) AS quantidade_funcionarios
FROM empregado
GROUP BY (numerodpto);

-- Retorne o nome do departamento e a quantidade de funcionários de cada um.
SELECT d.dnome, COUNT (*) AS quantidade_funcionarios
FROM departamento d JOIN empregado e
ON d.dnumero = e.numerodpto
GROUP BY(dnome);

-- Retorne o nome do departamento e a quantidade de funcionários de cada um considerando somente os departamentos que possuem a string PRP no nome
SELECT dnome, COUNT (*) AS quantidade_funcionarios
FROM departamento
WHERE dnome LIKE ('%prp%')
GROUP BY(dnome);

-- Retorne o nome do departamento e a quantidade de funcionários de cada um considerando somente os departamentos que possuem a string PRP no nome e os departamentos que possuem mais de 1 empregados
SELECT d.dnome, COUNT (*) AS quantidade_funcionarios
FROM departamento d JOIN empregado e
ON d.dnumero = e.numerodpto
WHERE d.dnome LIKE ('%prp%')
GROUP BY(d.dnome)
HAVING COUNT (*) > 1;