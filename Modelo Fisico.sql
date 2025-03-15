/* Modelo Logico: */

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