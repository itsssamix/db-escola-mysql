Este repositório foi uma proposta de trabalho de faculdade e contém o script SQL para a criação e povoamento de um modelo de banco de dados relacional simples, projetado para gerenciar informações básicas de uma instituição de ensino (Alunos, Professores, Cursos, Matérias e Notas).


Como usar?
O arquivo principal é `script.sql`

Pré requisitos:
Um SGBD instalado (MYSQL, por exemplo).

Execução:
1. Criar um novbo banco de dados vaxio (ex: 'CREATE DATABASE escola;').
2. Executar o script 'script.sql' neste novo banco de dados.

O script cria as seguintes tabelas e define as relações entre elas:

| Tabela | Descrição | Chave Estrangeira (FK) |
| :--- | :--- | :--- |
| **Curso** | Define os cursos oferecidos. | - |
| **Aluno** | Informações dos estudantes. | FK para `Curso` |
| **Professor** | Informações do corpo docente. | - |
| **Materia** | Disciplinas oferecidas. | FK para `Curso` |
| **Turma** | Agrupamento de alunos em uma matéria e professor específico. | FK para `Materia`, FK para `Professor` |
| **Nota** | Registros de desempenho dos alunos. | FK para `Aluno`, FK para `Materia` |

Este projeto demonstra familiaridade com os seguintes conceitos de banco de dados:

* **Modelagem Relacional:** Criação de um modelo *One-to-Many* (Um para Muitos) entre entidades.
* **Definição de Esquema (DDL):** Uso de comandos `CREATE TABLE`.
* **Restrições:** Uso de `PRIMARY KEY`, `NOT NULL`, e `FOREIGN KEY` para garantir a integridade referencial dos dados.
* **Manipulação de Dados (DML):** Uso de comandos `INSERT INTO` para popular o banco com dados de teste.
