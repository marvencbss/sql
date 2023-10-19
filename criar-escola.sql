
CREATE TABLE IF NOT EXISTS curso (
    idcurso NUMBER,
    nome TEXT,
    turno TEXT,
    sala TEXT,

    PRIMARY KEY(idcurso)
);

CREATE TABLE IF NOT EXISTS aluno (
    idaluno NUMBER,
    nome TEXT,
    idturno NUMBER,
    idsala NUMBER,

    PRIMARY KEY (idaluno)
    FOREIGN KEY (idturno) REFERENCES curso (idturno)
    FOREIGN KEY (idsala) REFERENCES curso (idsala)
);

CREATE TABLE IF NOT EXISTS aluno_curso (
    id_aluno_curso NUMBER,
    idaluno NUMBER,
    idcurso NUMBER,

    PRIMARY KEY (id_aluno_curso)
    FOREIGN KEY (idaluno) REFERENCES aluno (idaluno)
    FOREIGN KEY (idcurso) REFERENCES curso (idcurso)
);

CREATE TABLE IF NOT EXISTS professor (
    idprofessor NUMBER,
    nome TEXT,

    PRIMARY KEY (idprofessor)
);

.mode table
.output tabelas.escola.txt
PRAGMA table_info(curso);
PRAGMA table_info(aluno);
PRAGMA table_info(professor);
PRAGMA table_info(aluno_curso);
.output
