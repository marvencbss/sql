
CREATE TABLE IF NOT EXISTS curso (
    idcurso NUMBER,
    nome TEXT,
    turno TEXT,
    sala TEXT,
    idprofessor NUMBER,
    
    FOREIGN KEY (idprofessor) REFERENCES professor (idprofessor)
    PRIMARY KEY(idcurso)
);

CREATE TABLE IF NOT EXISTS aluno (
    idaluno NUMBER,
    nome TEXT,
    idcurso TEXT,
    
    FOREIGN KEY (idcurso) REFERENCES curso (idcurso)
    PRIMARY KEY (idaluno)
);

CREATE TABLE IF NOT EXISTS professor (
    idprofessor NUMBER,
    nome TEXT,
    idcurso TEXT,
    
    FOREIGN KEY (idcurso) REFERENCES curso (idcurso)
    PRIMARY KEY (idprofessor)
);

.mode table
.output tabelas.escola.txt
PRAGMA table_info(curso);
PRAGMA table_info(aluno);
PRAGMA table_info(professor);
PRAGMA table_info(aluno_turma);
.output
