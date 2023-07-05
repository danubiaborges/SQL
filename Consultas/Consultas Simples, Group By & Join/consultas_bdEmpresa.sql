-- Retorne os dados de todos os funcionários
SELECT * FROM funcionario;

-- Retorne o nome e o CPF dos funcionários cujo email possui @unifei no endereço
SELECT nome, cpf
FROM funcionario
WHERE email LIKE '%\@unifei%';

-- Retorne todos os dados de alocação
SELECT * FROM alocacao;

-- Retorne o código dos projetos que o funcionário com um determinado código foi alocado
SELECT codp
FROM ALOCACAO WHERE codf = '4';

-- Retorne o código dos projetos e dos funcionários de todas as alocações que iniciaram depois de uma determinada data
SELECT codp, codf
FROM alocacao
WHERE datai > '2023/01/01';