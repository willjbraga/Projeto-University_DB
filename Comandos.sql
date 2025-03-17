/*Criação da Base de Dados*/
CREATE DATABASE universidade_u;

/*Selecionando o Database universidade_u*/
USE universidade_u;

/*Criação da Tabela Aluno usando a modelagem fisica gerada pelo BR Modelo*/

CREATE TABLE ALUNO (
    endereco text,
    sexo char(1),
    idade int,
    telefone varchar(20),
    nome varchar(25),
    data_inscricao_curso date,
    valor_pago_curso float(10,2),
    ativo_sn int
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso, ativo_sn, endereco, nome)
values(
	'M', 55, '2018-12-01', '11 5555-2222', 645.22, 1, 
    'Rua Crodovaldo, 1500, ap525 - SP', 'Zé'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso, ativo_sn, endereco, nome)
values(
	'M', 55, '2018-12-06', '11 5555-2222', 645.22, 1, 
    'Avenida Paulista, 1555, ap225 - SP', 'João'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso, ativo_sn, endereco, nome)
values(
	'F', 30, '2020-01-25', '11 3333-2222', 645.22, 1, 
    'Rua Francisco Sá, 20, SP', 'Maria'
);

insert into aluno(sexo, idade, data_inscricao_curso, telefone, valor_pago_curso, ativo_sn, endereco, nome)
values('F', 25, '2020-02-20', '11 3333-2222', 520.75, 0, 
    'Rua Abadias Nora, 20, MG', 'Josefa');

select * from aluno;

select nome, idade, telefone from aluno;