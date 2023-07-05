-- Retorne os dados de todos os alunos
SELECT * FROM aluno;

-- Retorne o nome e o CPF dos alunos cujo email possui @unifei
SELECT nome, cpf
FROM aluno
WHERE email LIKE '%\@unifei%';

-- Retorne o código das turmas que o professor com um determinado código foi alocado
SELECT codigo
FROM turma WHERE professor = '003';

-- Retorne o código das disciplinas cuja quantidade de créditos está em um determinado intervalo (os limites inferior e superior do intervalo você quem deve definir)
SELECT codigo
FROM disciplina WHERE creditos BETWEEN 1 and 3;

-- Retorne os dados das matrículas que estão em curso
SELECT * FROM matricula WHERE ano = 2023;