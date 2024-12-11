DROP DATABASE IF EXISTS parqueDiversao;
CREATE DATABASE parqueDiversao;

CREATE TABLE Visitantes(
	id SERIAL PRIMARY KEY,
	nome TEXT NOT NULL,
	data_nascimento DATE NOT NULL,
	email TEXT NOT NULL
);
	
CREATE TABLE Atracao(
	id SERIAL PRIMARY KEY,
	nome TEXT NOT NULL,
	tipo TEXT NOT NULL,
	capacidade INTEGER NOT NULL
);
	
CREATE TABLE Ingresso(
	id SERIAL PRIMARY KEY,
	Visitantes_id INTEGER REFERENCES Visitantes (id),
	Atracao_id INTEGER REFERENCES Atracao (id),
	data_visita DATE NOT NULL
);
	
CREATE TABLE Funcionario(
	id SERIAL PRIMARY KEY,
	nome TEXT NOT NULL,
	cargo TEXT NOT NULL,
	salario INTEGER NOT NULL,
	Atracao_id INTEGER REFERENCES Atracao (id)
);
