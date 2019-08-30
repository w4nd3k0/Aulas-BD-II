#Criar Banco de Dados Biblio

CREATE DATABASE biblio;

#Usar Banco de Dados Biblio

USE biblio;

#Criar Tabela Libro

CREATE TABLE livro(
id_livro int primary key auto_increment,
titulo_livro varchar(100) not null);


CREATE TABLE usuario(
id_usuario int primary key auto_increment,
nome_usuario varchar(100) not null,
email_usuario varchar(250),
data_nasc_usuario date,
quant_emprest_usuario int not null default 0);

CREATE TABLE emprestimo(
id_emprestimo int primary key auto_increment,
usuario_id_usuario int not null,
livro_id_livro int not null,
data_emprestimo date not null,
data_devolucao date not null,
data_entrega date,
foreign key(usuario_id_usuario) references usuario(id_usuario),
foreign key(livro_id_livro) references livro(id_livro));

#inserindo dados

INSERT INTO livro (titulo_livro) VALUES
	("Bagagem"), 
	("O Cortiço"), 
	("Lira dos Vinte Anos"),
	("Quarup"),
	("O Tronco"),
	("A escrava Isaura"),
	("O Pagador de Promessas"),
	("O que é isso, Companheiro?"),
	("Vidas Secas"),
	("Grande Sertão Veredas");

    
INSERT INTO usuario (nome_usuario, email_usuario, 
data_nasc_usuario) VALUES
("João Silva", "joao@email.com", "1992-08-09"),
("Maria Mota", "maria@provedor.net", "1984-05-17"),
("Eduardo Cançado", "edu@email.com", "1996-02-23"),
("Silvia Alencar", "silvia@provedor.net", "1973-09-20"),
("Gabriela Medeiros", "gabi@email.com", "1993-01-10"),
("Karina Silva", "karin@email.com", "1995-03-25");


INSERT INTO emprestimo (usuario_id_usuario, livro_id_livro, data_emprestimo, data_devolucao, data_entrega) VALUES
	(1, 4, "2014-07-15", "2014-08-15", "2014-08-10"),
	(3, 2, "2014-08-22", "2014-09-22", "2014-09-21"),
	(2, 6, "2014-08-22", "2014-09-22", null),
	(2, 8, "2014-09-21", "2014-10-21", null),
	(1, 10, "2014-09-23", "2014-10-23", "2014-09-29"),
	(4, 2, "2014-09-23", "2014-10-23", null),
	(4, 7, "2014-09-23", "2014-10-23", null),
	(5, 3, "2014-09-24", "2014-10-24", null),
	(5, 9, "2014-09-24", "2014-10-24", null),
	(5, 1, "2014-09-24", "2014-10-24", null),
	(6, 3, "2014-09-01", "2014-10-01", "2014-09-30");
    
    
# Criando uma visão (contatos_usuarios) que mostre apenas o nome e e-mail dos usuários
# da biblioteca.

CREATE VIEW contatos_usuarios AS
SELECT nome_usuario Nome, email_usuario Email
FROM usuario;    
    
    
    
    
    
    
    
