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

INSERT INTO aluno(sexo, idade, data_inscricao_curso, telefone, valor_pago_curso, ativo_sn, endereco, nome)
VALUES
('M', 30, '2019-06-15', '21 98877-6655', 700.50, 1, 'Av. Paulista, 1000, SP', 'Carlos Silva'),
('F', 22, '2021-08-10', '31 97777-1234', 450.00, 1, 'Rua das Flores, 45, MG', 'Mariana Costa'),
('M', 27, '2022-03-25', '11 99988-5544', 600.00, 1, 'Rua das Acácias, 90, RJ', 'João Pedro Santos'),
('F', 35, '2018-12-05', '81 91234-5678', 750.90, 0, 'Rua Bela Vista, 12, PE', 'Ana Beatriz'),
('M', 28, '2020-07-19', '47 93456-7890', 550.25, 1, 'Rua do Comércio, 88, SC', 'Eduardo Almeida'),
('F', 24, '2023-05-14', '85 95432-1122', 480.00, 1, 'Rua Central, 50, CE', 'Gabriela Moura'),
('M', 40, '2017-09-30', '92 96543-2233', 800.00, 0, 'Av. Principal, 777, AM', 'Ricardo Lopes'),
('F', 29, '2019-04-22', '71 97654-3344', 620.75, 1, 'Rua Nova, 23, BA', 'Fernanda Oliveira'),
('M', 26, '2021-10-05', '62 98765-4455', 500.00, 1, 'Av. Goiás, 321, GO', 'Thiago Pereira'),
('F', 31, '2018-11-11', '41 99876-5566', 700.90, 0, 'Rua Curitiba, 70, PR', 'Camila Andrade');


select * from aluno;
 /*Usando Operadores Lógicos */
select * from aluno where sexo = 'M' AND ativo_sn = 1 AND valor_pago_curso <= 625;
select * from aluno where sexo = 'F' OR idade >= 40;

/* Usando o Operador Between*/
select * from aluno where data_inscricao_curso between '2018-11-01' and '2018-11-30';
select * from aluno where idade between 40 and 60;

/*Utilizando o Operador IN ou NOT IN*/
select * from aluno where nome in ('Ana', 'Maria', 'Josefa');
select * from aluno where nome not in ('Ana', 'Maria', 'Josefa');