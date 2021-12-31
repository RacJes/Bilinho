Create table ies (
	id_ies serial primary key,
	nome varchar NOT NULL,
	cnpj int,
	tipo varchar
);
create table aluno (
	id_aluno serial primary key,
	nome varchar ,
	cpf int,
	nasc date,
	tel int,
	genero char,
	pagamento text not null
);
create table matricula(
	id_matricula serial primary key,
	nome_curso varchar,
	valor_total int,
	qtd_faturas int,
	vencimento date,
	id_ies int,
	id_aluno int,
	FOREIGN KEY (id_ies) references ies (id_ies),
	FOREIGN KEY (id_aluno) references aluno (id_aluno)
);
create table fatura(
	id_fatura serial primary key,
	vencimento date,
	id_matricula int,
	status varchar not null,
	FOREIGN KEY (id_matricula) REFERENCES matricula (id_matricula)
);

insert into ies(nome,cnpj,tipo) values ('faculeste', 123, 'faculdade');
insert into aluno values (1,'rafael',4253,'2021-01-01',12982,'m','123');
insert into matricula values (1,'Desenvolvimento',5000,10,'2022-01-10',1,1);
insert into fatura values (1,'2022-01-10',1,'paga');