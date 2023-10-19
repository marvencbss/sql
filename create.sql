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
    idcurso NUMBER,

    PRIMARY KEY (idaluno)
    
    );

CREATE TABLE IF NOT EXISTS professor (
    idprofessor NUMBER,
    nome TEXT,
    idcurso NUMBER,

    PRIMARY KEY (idprofessor)
);
