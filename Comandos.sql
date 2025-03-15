/*Criação da Base de Dados*/
CREATE DATABASE universidade_u;

/*Selecionando o Database universidade_u*/
USE universidade_u;

/*Criação da Tabela Aluno usando a modelagem fisica gerada pelo BR Modelo*/

CREATE TABLE Aluno (
    endereco text,
    sexo char(1),
    idade int,
    telefone varchar(20),
    nome varchar(25),
    data_inscricao_curso date,
    valor_pago_curso float(10,2),
    ativo_sn int
);


