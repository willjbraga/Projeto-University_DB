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

/*Selecionando dados utilizando o operador like*/
select * from aluno where nome like 'm%a';
select * from aluno where nome like '%a';
select * from aluno where nome like '_oã_';
select * from aluno where nome like '%d_';

/*Usando ordenações de dados*/
select * from aluno order by idade asc;
select * from aluno order by idade desc;
select * from aluno where idade between 30 and 40 order by idade desc;

/*Usando o comando DML update para mudar o status ativo*/
update aluno set ativo_sn = 1 where nome = 'Josefa';
update aluno set ativo_sn = 0, valor_pago_curso = 700 where nome = 'Zé';

/*Deletando dados da tabela aluno*/

delete from aluno where idade in (30,29);

/* Desc usado para descrever as colunas da tabela aluno*/
desc aluno;

/* Usando ALTER TABLE + ADD para adicinar novas colunas*/
alter table aluno add cpf varchar(11);
alter table aluno add email varchar(150) after idade;

/*Usabdi ALTER TABLE + MODIFY para alterar a coluna já criada*/
alter table aluno modify column cpf varchar(14);

/*Removendo a  coluna cpf com ALTER TABLE + DROP COLUMN*/
alter table aluno drop column cpf;

alter table aluno add cpf varchar(14) after email;

/*Criando um update para adicionar cpf e email*/
UPDATE aluno SET cpf = '94398550290', email = 'zé63@yahoo.com' WHERE nome = 'Zé';
UPDATE aluno SET cpf = '07073666400', email = 'joão49@gmail.com' WHERE nome = 'João';
UPDATE aluno SET cpf = '03024898860', email = 'maria99@gmail.com' WHERE nome = 'Maria';
UPDATE aluno SET cpf = '57918925270', email = 'josefa36@gmail.com' WHERE nome = 'Josefa';
UPDATE aluno SET cpf = '93701982960', email = 'carlos_silva47@hotmail.com' WHERE nome = 'Carlos Silva';
UPDATE aluno SET cpf = '91527420100', email = 'mariana_costa23@yahoo.com' WHERE nome = 'Mariana Costa';
UPDATE aluno SET cpf = '62894371580', email = 'joao_pedro_santos77@outlook.com' WHERE nome = 'João Pedro Santos';
UPDATE aluno SET cpf = '15746930250', email = 'ana_beatriz14@gmail.com' WHERE nome = 'Ana Beatriz';
UPDATE aluno SET cpf = '48205619730', email = 'eduardo_almeida51@hotmail.com' WHERE nome = 'Eduardo Almeida';
UPDATE aluno SET cpf = '69327804560', email = 'gabriela_moura99@outlook.com' WHERE nome = 'Gabriela Moura';
UPDATE aluno SET cpf = '82547391020', email = 'ricardo_lopes28@yahoo.com' WHERE nome = 'Ricardo Lopes';
UPDATE aluno SET cpf = '31985670240', email = 'fernanda_oliveira72@gmail.com' WHERE nome = 'Fernanda Oliveira';
UPDATE aluno SET cpf = '56829347110', email = 'thiago_pereira63@hotmail.com' WHERE nome = 'Thiago Pereira';
UPDATE aluno SET cpf = '74102568930', email = 'camila_andrade85@outlook.com' WHERE nome = 'Camila Andrade';

/*Definindo como chave primária natural a coluna CPF*/
alter table aluno modify cpf varchar(14) primary key;