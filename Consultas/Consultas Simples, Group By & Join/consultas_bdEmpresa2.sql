-- Retorne todos os projetos cujo nome é Gerência de qualidade de dados
SELECT * FROM projeto WHERE pnome = 'Gerencia de Qualidade de Dados';

-- Retorne todos os empregados que contém o nome da rua Teldomiro Santiago no endereço
SELECT * FROM empregado WHERE endereco LIKE 'Rua Teldomiro Santiago';

-- Retorne o nome completo de os empregados que nasceram antes de 10/01/2001
SELECT nome FROM empregado WHERE datanasc < '2001/01/10';

-- Retorne o código dos projetos nos quais o funcionario com SSN = E00120 trabalhou mais de 5 horas.
SELECT pnumero
FROM trabalha_em
WHERE ssn = 'E00120' AND horas > '05:00:00';