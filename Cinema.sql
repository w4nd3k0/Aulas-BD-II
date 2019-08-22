#1. Crie o seguinte Banco de Dados com o nome ‘Cinema’.

#Criar Banco de Dados

create database cinema;

#Usar banco e dados
use cinema;

#Criar Tabela ATOR

create table Ator(
CodAtor Char(3) primary key,
NomeArtistico Char(40) Not null,
NomeReal Char(40) Not null,
Nacionalidade Char(20) Not null,
Sexo Char(1) Not null,
Idade Int(2) Not null,
IndicacaoOscar Int(2),
Oscar Int(2));

#Criar Tabela Filme

create table Filme(
CodFilme Char(3) primary key,
NomeFilme Char(40) Not null,
AnoFilme Int(4) Not null,
Orcamento Int(15) Not null,
Tempo Int(2) Not null);

#Criar Tabela Personagem
create table Personagem(
CodFilme Char(3),
CodAtor Char(3),
Personagem Char(40) Not null,
Salario Int(15) Not null,
foreign key(CodFilme) references Filme(CodFilme),
foreign key(CodAtor) references Ator(CodAtor),
primary key (CodFilme, CodAtor));

#2. Insira dados nas tabelas do BD utilizando o Script SQL fornecido pelo professor.

#Inserir Dados Na Tabela Ator

insert into ator values ('a1','Demi Moore','Maria da Silva','USA','F',32,null,null);
insert into ator values ('a10','Willian Hurt','Willian Ernst Hurt','USA','M',45,2,1);
insert into ator values ('a11','George Clooney','George Costa Smith','USA','M',37,1, null);	
insert into ator values ('a12','Jennifer Lopez','Maria Conchita Lopez','México','F',32, null, null);		
insert into ator values ('a13','Antony Hopkins','Antony Richard Hopcroft','USA','M',65,6,3);
insert into ator values ('a14','Antônio Banderas','Antônio Augusto Banderas','Espanha','M',34, null, null);		
insert into ator values ('a15','Tom Hanks','Antony Hanks','USA','M',45,1,1);
insert into ator values ('a16','Matt Damon','Mattew Louis Damon','USA','M',32,1,1);
insert into ator values ('a17','Jim Carrey','James Carrey','USA','M',40, null, null);		
insert into ator values ('a18','Nicole Kidman','Susan West','Austrália','F',33, null, null);		
insert into ator values ('a19','Val Kilmer','Valerio Soza Kilmer','Porto Rico','M',40, null, null);		
insert into ator values ('a2','Brad Pitt','João Paulo','USA','M',28,1, null);	
insert into ator values ('a20','Cameron Diaz','Esperanza Diaz','Costa Rica','F',29, null, null);		
insert into ator values ('a21','Holly Hunter','Susan Richards','USA','F',33,1,1);
insert into ator values ('a22','Richard Gere','Richard Gere','USA','M',34, null, null);		
insert into ator values ('a3','Jessica Lange','Jessica Lange','USA','F',42,4,2);
insert into ator values ('a4','Dustin Hoffman','Dustin Hoffman','USA','M',36,2, null);	
insert into ator values ('a5','Sônia Braga','Sônia Braga','Brasil','F',45, null, null);		
insert into ator values ('a6','Samuel Jackson','Samuel L. Jackson','USA','M',60, null, null);		
insert into ator values ('a7','Sandra Bullock','Sandra Bullock','USA','F',30,2,null);	
insert into ator values ('a8','Harry Cornick Jr','Harry Cornick Jr','USA','M',40, null, null);		
insert into ator values ('a9','Wesley Snipes','Wesley Snipes','USA','M',31,1,null);

#Inserir Dados Na Tabela Filme

insert into filme values ('f1','A Jurada',1996,1000000,18);
insert into filme values ('f10','Cidade das Sombras',1997,10000000,7);
insert into filme values ('f11','Irresistivel Paixao',1998,10000000,10);
insert into filme values ('f12','A Mascara do Zorro',1998,11000000,11);
insert into filme values ('f13','Quem vai ficar com Marry?',1997,6000000,8);
insert into filme values ('f14','O Resgate do Soldado Ryan',1997,10000000,7);
insert into filme values ('f15','O Show de Truman',1998,10000000,14);
insert into filme values ('f16','Batman, o Filme',1995,10000000,9);
insert into filme values ('f17','Filadelfia',1996,10000000,6);
insert into filme values ('f18','O Mascara',1995,6000000,7);
insert into filme values ('f19','O Beijo da Mulher Aranha',1990,8000000,24);
insert into filme values ('f2','A Letra Escarlate',1995,10000000,24);
insert into filme values ('f20','O Pacificador',1997,10000000,15);
insert into filme values ('f21','Ace Ventura',1995,7000000,12);
insert into filme values ('f22','Chaplin',1993,8000000,14);
insert into filme values ('f23','Batman e Robin',1997,10000000,20);
insert into filme values ('f24','Strip Tease',1996,7000000,12);
insert into filme values ('f25','Passageiro 57',1993,200000000,15);
insert into filme values ('f26','Forrest Gump',1996,90000000,15);
insert into filme values ('f3','Seven',1995,15000000,20);
insert into filme values ('f4','Tootsie',1982,5000000,16);
insert into filme values ('f5','Tieta',1995,2000000,18);
insert into filme values ('f6','Codigo de Violencia',1997,10000000,15);
insert into filme values ('f7','Quando o Amor Acontece',1998,5000000,12);
insert into filme values ('f8','A Vinganca de Bette',1998,10000000,9);
insert into filme values ('f9','Blade, o Cacador de Vampiros',1998,100000000,18);

#Inserir Dados Na Tabela Personagem

insert into personagem values ('f1','a1','Mary',30000);
insert into personagem values ('f10','a10','Columbo',3000000);
insert into personagem values ('f11','a11','Johnny',8000000);
insert into personagem values ('f11','a12','Holly',1000000);
insert into personagem values ('f12','a13','Diego',5000000);
insert into personagem values ('f12','a14','Pancho',8000000);
insert into personagem values ('f13','a16','Roger',4000000);
insert into personagem values ('f13','a20','Mary',5000000);
insert into personagem values ('f14','a15','Roberts',10000000);
insert into personagem values ('f14','a16','Edward',2000000);
insert into personagem values ('f15','a17','Truman',12000000);
insert into personagem values ('f16','a17','Charade',5000000);
insert into personagem values ('f16','a18','Betty',7000000);
insert into personagem values ('f16','a19','Bruce',8000000);
insert into personagem values ('f17','a14','Bobby',4000000);
insert into personagem values ('f17','a15','Bill',6000000);
insert into personagem values ('f18','a17','Mascara',10000000);
insert into personagem values ('f18','a21','Sammy',2000000);
insert into personagem values ('f19','a10','Molina',2000000);
insert into personagem values ('f19','a5','Aranha',80000);
insert into personagem values ('f2','a1','Sandy',50000);
insert into personagem values ('f20','a11','George',14000000);
insert into personagem values ('f20','a18','Mary',5000000);
insert into personagem values ('f21','a17','Ace',6000000);
insert into personagem values ('f21','a21','Lola',1000000);
insert into personagem values ('f22','a8','Chaplin',3000000);
insert into personagem values ('f23','a11','Bruce',10000000);
insert into personagem values ('f24','a1','Annie',18000000);
insert into personagem values ('f25','a9','James',14000000);
insert into personagem values ('f26','a15','Forrest',20000000);
insert into personagem values ('f3','a2','John',50000);
insert into personagem values ('f4','a3','Mary',1000000);
insert into personagem values ('f4','a4','Tootsie',2000000);
insert into personagem values ('f5','a10','Nacib',2500000);
insert into personagem values ('f5','a5','Tieta',50000);
insert into personagem values ('f6','a6','Robinson',3000000);
insert into personagem values ('f7','a7','Suzy',3000000);
insert into personagem values ('f7','a8','Bill',5000000);
insert into personagem values ('f8','a3','Bette',3000000);
insert into personagem values ('f9','a9','Blade',100000000);


#3. Faça as seguintes consultas, e grave-as em um arquivo SQL para ser enviado.

#a) Obter o nome e o ano de todos os filmes cadastrados no banco de dados.

select f.NomeFilme, f.AnoFilme
from Filme f order by f.NomeFilme;

#b) Obter a nacionalidade dos atores cadastrados no BD.

select a.Nacionalidade
from ator a group by a.Nacionalidade;

#c) Obter o nome artístico e o nome real dos atores cadastrados no BD.

select a.NomeReal, a.NomeArtistico
from ator a order by a.NomeReal;

#d) Obter os personagens e os cachês pagos dos filmes cadastrados.

select p.Personagem, p.Salario
from Personagem p order by p.Personagem;

#e) Obter o código e nome artístico dos atores que são do sexo feminino.

select a.NomeArtistico, a.CodAtor
from ator a
where a.Sexo = 'F' order by a.NomeArtistico;

#f) Obter o código e nome artístico dos atores que são do sexo feminino e que possuem idade entre 35 e 45 anos.

select a.NomeArtistico, a.CodAtor
from ator a
where a.Sexo = 'F' and a.Idade between 35 and 45 order by a.NomeArtistico;

#g) Obter o nome dos filmes em que o orçamento excede 8.000.000,00.

select f.NomeFilme
from Filme f
where f.Orcamento > 8000000 order by f.NomeFilme;

#h) Obter o número de filmes em que o ator de código ‘a1’ atuou.

select count(p.CodFilme)
from personagem p
where p.CodAtor = 'a1';

#i) Obter o nome dos filmes em que Jim Carrey atua.

select f.NomeFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Jim Carrey' order by f.NomeFilme;

#j) Obter o nome dos atores, nacionalidades e idades.

select a.NomeReal, a.Nacionalidade, a.Idade
from Ator a order by a.NomeReal;

#k) Obter o nome dos atores, personagens e correspondentes cachês.

select a.NomeReal, p.Personagem, p.Salario
from Ator a, Personagem p
where a.CodAtor = p.CodAtor order by a.NomeReal;

#l) Obter os nomes dos atores e o total de indicações de oscar recebidos por cada ator.

select a.NomeArtistico, a.IndicacaoOscar
from Ator a order by a.NomeArtistico;

#m) Obter o nome dos autores que não atuam em nenhum filme.

select a.NomeArtistico
from Ator a
where a.CodAtor not in (select p.CodAtor from Personagem p);

#n) Obter o código e o nome dos filmes em que Jim Carrey não atua.

select f.CodFilme, f.NomeFilme
from Filme f
where f.CodFilme not in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Jim Carrey' order by f.NomeFilme);

#o) Obter o nome artístico dos atores, bem como a média de ganho com cachês nos filmes que atuaram.

select a.NomeArtistico, round((sum(p.Salario)/count(p.salario)),2) Media
from Ator a, Personagem p 
where a.CodAtor = p.CodAtor group by a.NomeArtistico;

#p) Obter os dados dos atores que receberam algum Oscar.

select * 
from ator a
where a.Oscar >= 1 order by a.NomeArtistico;

#q) Obter o nome dos atores e suas respectivas idades, que têm idade maior do que a idade média de todos os atores do sexo masculino.

select a.NomeArtistico, a.Idade
from Ator a
where a.Idade > (select sum(a.Idade)/count(a.Idade) from Ator a where a.Sexo = 'M') order by a.NomeArtistico;

#r) Obter o ano do Primeiro filme onde Jim Carrey atuou, e o ano de seu último filme.

select Min(f.AnoFilme) Primeiro, Max(f.AnoFilme) Ultimo 
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Jim Carrey' order by f.NomeFilme;

#s) Obter o número de filmes em que atuou George Clooney.

select count(f.CodFilme) QTD
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'George Clooney' order by f.NomeFilme;

#t) Obter o nome e o código dos filmes em que Tom Hanks e Matt Damon atuam juntos.

select f.CodFilme, f.NomeFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Tom Hanks' and f.CodFilme in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Matt Damon');

#u) Obter o nome dos filmes que Tom Hanks atua, mas Matt Damon não atua.

select f.NomeFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Tom Hanks' and f.CodFilme not in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Matt Damon');

#v) Obter o nome dos atores que atuam em algum filme que Jim Carrey atua.

select distinct(a.NomeArtistico)
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey' and f.CodFilme in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico = 'Jim Carrey') order by a.NomeArtistico;

#w) Obter o nome dos atores que atuam em algum filme que Jim Carrey não atua.

select distinct(a.NomeArtistico)
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey' and f.CodFilme in (select f.CodFilme
from Ator a, Filme f, Personagem p
where a.CodAtor = p.CodAtor and f.CodFilme = p.CodFilme and a.NomeArtistico <> 'Jim Carrey') order by a.NomeArtistico;


#4. Utilizando as consultas UPDATE e DELETE, faça as seguintes consultas e grave-as em um arquivo SQL para ser enviado.

#a) Atualize os valores dos cachês de todos os atores para 100.000.

update Personagem p
set p.Salario = 100000
where p.Salario <> 0;

#b) Atualize a tabela ATOR alterando a sigla USA referente à nacionalidade dos atores para “EUA”.

update Ator a
set a.Nacionalidade = 'EUA'
where a.Nacionalidade = 'USA';

#c) Altere o ano de lançamento do filme “A Máscara do Zorro” para 2001.

update Filme f
set f.Anofilme = 2001
where f.NomeFilme = 'A Máscara do Zorro';

#d) Acrescente mais 10 anos à idade de todos os atores que são do sexo “Masculino”.

update Ator a
set a.Idade = a.idade+10
where a.Sexo = 'M';

#e) Exclua o ator de código ‘a22’.

delete from Ator where CodAtor = 'a22';

#f) Tente remover o ator de código a1 e verifique a mensagem informado pelo MySQL.

delete from Ator where CodAtor = 'a1';

#Não é possivel eletar ator a1 por que ele esta sendo referenciado na tabela personagem.





