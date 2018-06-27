create database BrFlix;

use BrFlix;

create table Usuario (
	ID int primary key auto_increment,
    Primeiro_Nome varchar(30) not null,
    Sobrenome varchar(30) not null,
    Email varchar(45) null,
    Senha varchar(15) not null,
    Data_Registro date,
    Data_Exclusao date
);

create table Perfil(
	ID int primary key auto_increment,
	Descricao varchar(45) NULL
);
   
create table Filme(
	ID int primary key auto_increment,
    Nome varchar(80),
    Data_Registro date null,
    Sinopse varchar(800) null,
    Video_URL varchar(2000) null,
    Imagem_URL varchar(2000) null
);

create table Comentario (
	ID int primary key auto_increment,
    Comentario varchar(500) null,
    ID_Usuario int not null,
    ID_Filme int not null,
    foreign key(ID_Usuario) references Usuario(ID),
    foreign key(ID_Filme) references Filme(ID)
);

create table Avaliacao(
	ID int primary key auto_increment,
    Avaliacao int null,
    ID_Filme int not null,
    ID_Usuario int not null,
    foreign key (ID_Filme) references Filme(ID),
    foreign key (ID_Usuario) references Usuario(ID)
);
    
create table Genero(
	ID int primary key auto_increment,
    Descricao varchar(45) null,
    ID_Filme int not null,
    foreign key (ID_Filme) references Filme(ID)
);

create table Elenco (
	ID int primary key auto_increment,
    Nome varchar(45) not null
);

create table UsuarioTemPerfil (
	ID int primary key auto_increment,
	ID_Usuario int not null,
    ID_Perfil int not null,
    foreign key (ID_Usuario) references Usuario(ID),
    foreign key (ID_Perfil) references Perfil(ID)
);

insert into Usuario (Primeiro_Nome, Sobrenome, Email, Senha, Data_Registro, Data_Exclusao) values  ('Jhyeferson','Dias','jhyefersondias@hotmail.com','asd123','2018-06-23','2018-08-15');
insert into Usuario (Primeiro_Nome, Sobrenome, Email, Senha, Data_Registro, Data_Exclusao) values  ('Creuza','Silva','usuario@email.com','asd123','2018-05-05','2018-12-15');
select * from Usuario;


insert into Perfil (Descricao) values ('Perfil padrão');
insert into Perfil (Descricao) values ('Perfil padrão');
select * from Perfil;

insert into Filme (Nome, Data_Registro, Sinopse, Video_URL, Imagem_URL) values ('Lagoa Azul','2018-06-23','Filme de sessão da tarde para familia com altas confusões','https:\\www.brflix.com','https:\\www.brflix.com');
insert into Filme (Nome, Data_Registro, Sinopse, Video_URL, Imagem_URL) values ('Se eu fosse você','2018-01-10','Filme Nacional','https:\\www.brflix.com','https:\\www.brflix.com');
select * from Filme;

insert into Comentario (Comentario, ID_Filme, ID_Usuario) values ('Filme topzera', 1, 1);
insert into Comentario (Comentario, ID_Filme, ID_Usuario) values ('Era melhor ter ido ver o filme do Pelé', 2, 1);
select * from Comentario;

insert into Avaliacao (Avaliacao, ID_Filme, ID_Usuario) values (5, 1, 1);
insert into Avaliacao (Avaliacao, ID_Filme, ID_Usuario) values (2, 1, 2);
select * from Avaliacao;

insert into Genero (Descricao, ID_Filme) values ('Drama, Romance, Aventura', 1);
insert into Genero (Descricao, ID_Filme) values ('Comédia, Drama', 2);
select * from Genero;

insert into Elenco Values (1, 'Angelina Jolie, Tonny Ramos');
insert into Elenco Values (2, 'Claudia Raia, Tonny Ramos, Leandro Hassum');
select * from Elenco;

SELECT U.ID, U.PRIMEIRO_NOME, U.SOBRENOME,
U.EMAIL, U.SENHA, U.DATA_REGISTRO, U.DATA_EXCLUSAO, P.ID IDPERFIL, P.DESCRICAO PERFIL
FROM USUARIO U
LEFT JOIN USUARIOTEMPERFIL RLC ON RLC.ID_USUARIO = U.ID
LEFT JOIN PERFIL P ON P.ID = RLC.ID_PERFIL;


SELECT ID, AVALIACAO, ID_FILME, ID_USUARIO
FROM AVALIACAO;