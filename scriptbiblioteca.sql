
CREATE TABLE livros (
id_livros serial PRIMARY KEY,
titulo varchar(100),
autor varchar(100);
);

CREATE TABLE usuarios (
usuarios_id serial PRIMARY KEY,
nome varchar(100) not null,
idade integer
);

CREATE TABLE emprestimos (
emprestimos_id serial PRIMARY KEY,
id_livro integer,
id_usuario integer,
data_emprestimo date,
);

CREATE TABLE funcionarios(
funcionarios_id serial PRIMARY KEY,
nome varchar(100),
idade varchar(150),
data_contratacao date;
);

select * from emprestimos;

insert into livros (titulo) values ('O Essencial da psicologia');
insert into livros (titulo) values ('Deuses Americanos');
insert into livros (titulo) values ('Filhos de Anansi');
insert into livros (titulo) values ('Coraline');
insert into livros (titulo) values ('Sandman');
insert into livros (titulo) values ('Harry Potter e as Relíquias da Morte');
insert into livros (titulo) values ('O corvo e outros contos de Edgar Alan Poe');
insert into livros (titulo) values ('Mein Kampf');
insert into livros (titulo) values ('O Auto da Compadecida');
insert into livros (titulo) values ('Harry Potter e a Pedra Filosofal');

insert into livros (autor) values ('Carl Gustav Jung'),
insert into livros (autor) values ('Neil Gaiman'),
insert into livros (autor) values ('J.K Rowling'),
insert into livros (autor) values ('Adolf Hitler'),
insert into livros (autor) values ('Ariano Suassuna'),
insert into livros (autor) values ('Edgar Alan Poe');

select * from livros;

insert into usuarios (nome) values 
('Sergio'), 
('Renato'), 
('Maria'),
('Mario'), 
('Juliana'), 
('Leticia'),
('Joyce'), 
('Kaua'), 
('Rafael'),
('Bruna');


insert into usuario (idade) values
('18'),
('14'),
('27'),
('23'),
('55'),
('19'),
('13'),
('14'),
('22'),
('21');


select * from usuarios;

inner join usuarios as u 
	on e.id_usuarios = u.id

inner join livros as l
	on e.id_livros = l.id


select u.nome,
u.idade.id_livros,
l.titulo,
e.data_emprestimo,
from emprestimo as e
