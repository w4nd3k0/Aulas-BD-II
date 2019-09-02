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
FROM usuario ORDER BY Nome;

    
# Criando uma visão (contatos_usuarios) que mostre apenas o nome e e-mail dos usuários
# da biblioteca.

CREATE VIEW contatos_usuarios AS
SELECT nome_usuario Nome, email_usuario Email
FROM usuario;    

# Criando uma visão (aniversarios_usuarios) que mostre apenas o nome e data de 
# nascimento dos usuários da biblioteca.

CREATE VIEW aniversarios_usuarios as
SELECT nome_usuario Nome, data_nasc_usuario Nascimento
FROM usuario;

# Criando uma visão (emprestimos_realizados) que mostre o nome do usuario, título do livro, 
# data de empréstimo, devolução e entrega de todos os empréstimos realizados na biblioteca.

CREATE VIEW emprestimos_realizados AS
SELECT u.nome_usuario Nome, l.titulo_livro Livro, e.data_emprestimo Emprestimo, e.data_devolucao Devolucao, e.data_entrega Entrega
FROM usuario u, livro l, emprestimo e
WHERE u.id_usuario = e.usuario_id_usuario AND l.id_livro = e.livro_id_livro;

# Criando uma visão (emprestimos_atrasados) que mostre todos os empréstimos atrasados
# com base na visão empréstimos realizados.

CREATE VIEW emprestimos_atrasados AS
SELECT * FROM emprestimos_realizados
WHERE Devolucao < curdate() AND Entrega is null;

#Criando uma visão (quantidade_emprestimos_usuario) que mostre
# a quantidade de empréstimos realizados para cada usuário.

CREATE VIEW quantidade_emprestimos_usuario AS
SELECT Nome, count(*) Quantidade
FROM emprestimos_realizados
GROUP BY Nome;

#Alterando dados na visão.

UPDATE emprestimos_realizados
SET Entrega = "2014-09-29"
WHERE Nome = "Karina Silva";

#Alterando dados na visão.

UPDATE contatos_usuarios
SET Email = "silva@prov.net"
WHERE Nome = "Karina Silva";

# Criando um procedimento de cadastro de empréstimos, que receba o código do usuário e do
# livro como parâmetros de entrada. A data de empréstimo e devolução devem ser definidas
# automaticamente pelo banco de dados, por exemplo, data de empréstimo = hoje, e a data de
# devolução = 30 dias após o a data de empréstimo.


delimiter $$
CREATE PROCEDURE emprestar(IN usuario INT, IN livro INT)
BEGIN
SET @dt_emprestimo = curdate();
SET @dt_devolucao = adddate(@dt_emprestimo, 30);
INSERT INTO emprestimo (usuario_id_usuario,
livro_id_livro, data_emprestimo, data_devolucao)
VALUE (usuario, livro, @dt_emprestimo, @dt_devolucao);
END $$
delimiter ;

# Para utilizar um procedimento armazenado basta utilizar o comando CALL para realizar a
# “chamada” do procedimento. Exemplo:

call biblio.emprestar(6, 3);


# Criando um procedimento de cadastro de empréstimos, que receba o código do usuário e do
# livro como parâmetros de entrada. A data de empréstimo e devolução devem ser definidas
# automaticamente pelo banco de dados, por exemplo, data de empréstimo = hoje, e a data de
# devolução = 30 dias após o a data de empréstimo.

delimiter $$
CREATE PROCEDURE emprestar_retorno(IN usuario INT, IN livro
INT, OUT devolucao DATE)
BEGIN
SET @dt_emprestimo = curdate();
SET @dt_devolucao = adddate(@dt_emprestimo, 30);
SELECT @dt_devolucao INTO devolucao;
INSERT INTO emprestimo (usuario_id_usuario, livro_id_livro,
data_emprestimo, data_devolucao)
VALUE (usuario, livro, @dt_emprestimo, @dt_devolucao);
END $$
delimiter ;

set @devolucao = '0';
call biblio.emprestar_retorno(6, 3, @devolucao);
select @devolucao;




