SELECT alu.nome AS Aluno, cur.nome AS Curso, alu.idaluno, cur.idcurso
FROM aluno_curso
INNER JOIN aluno AS alu USING(idaluno)
INNER JOIN curso AS cur USING(idcurso);
