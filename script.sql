-- Criação da tabela "Curso"
CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL
);

-- Criação da tabela "Aluno"
CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    endereco VARCHAR(255),
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id_curso)
);

-- Criação da tabela "Professor"
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especializacao VARCHAR(100)
);

-- Criação da tabela "Matéria"
CREATE TABLE Materia (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id_curso)
);

-- Criação da tabela "Turma"
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    semestre VARCHAR(10) NOT NULL,
    materia_id INT,
    professor_id INT,
    qtd_alunos INT NOT NULL,
    FOREIGN KEY (materia_id) REFERENCES Materia(id_materia),
    FOREIGN KEY (professor_id) REFERENCES Professor(id_professor)
);

-- Criação da tabela "Nota"
CREATE TABLE Nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    nota DECIMAL(5,2) NOT NULL,
    aluno_id INT,
    materia_id INT,
    semestre VARCHAR(10) NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (materia_id) REFERENCES Materia(id_materia)
);

-- Inserir dados de exemplo na tabela Curso
INSERT INTO Curso (nome, duracao) VALUES ('Engenharia de Computação', 5);
INSERT INTO Curso (nome, duracao) VALUES ('Administração', 4);

-- Inserir dados de exemplo na tabela Aluno
INSERT INTO Aluno (nome, data_nasc, endereco, curso_id) VALUES ('João Silva', '2000-05-15', 'Rua A, 123', 1);
INSERT INTO Aluno (nome, data_nasc, endereco, curso_id) VALUES ('Maria Oliveira', '1999-08-22', 'Rua B, 456', 2);

-- Inserir dados de exemplo na tabela Professor
INSERT INTO Professor (nome, especializacao) VALUES ('Carlos Souza', 'Matemática');
INSERT INTO Professor (nome, especializacao) VALUES ('Patrícia Lima', 'Administração de Empresas');

-- Inserir dados de exemplo na tabela Materia
INSERT INTO Materia (nome, carga_horaria, curso_id) VALUES ('Cálculo I', 80, 1);
INSERT INTO Materia (nome, carga_horaria, curso_id) VALUES ('Gestão de Pessoas', 60, 2);

-- Inserir dados de exemplo na tabela Turma
INSERT INTO Turma (semestre, materia_id, professor_id, qtd_alunos) VALUES ('2025.1', 1, 1, 30);
INSERT INTO Turma (semestre, materia_id, professor_id, qtd_alunos) VALUES ('2025.1', 2, 2, 25);

-- Inserir dados de exemplo na tabela Nota
INSERT INTO Nota (nota, aluno_id, materia_id, semestre) VALUES (8.5, 1, 1, '2025.1');
INSERT INTO Nota (nota, aluno_id, materia_id, semestre) VALUES (9.0, 2, 2, '2025.1');
