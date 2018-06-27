use brflix;
show tables;

SELECT * FROM FILME;

SELECT F.ID, F.NOME, F.DATA_REGISTRO, F.SINOPSE, F.VIDEO_URL, F.IMAGEM_URL, G.DESCRICAO FROM FILME F
LEFT JOIN GENERO G ON G.ID_FILME = F.ID
WHERE 1 = 1
;

desc filme;
desc elenco;
desc genero;
desc comentario;
desc usuario;
desc perfil;
desc avaliacao;
desc usuariotemperfil;
/*drop table perfil;*/

SELECT ID, Avaliacao, ID_Filme, ID_Usuario
FROM AVALIACAO;

SELECT U.ID, U.Primeiro_Nome, U.Sobrenome,
U.Email, U.Senha, U.Data_Registro, U.Data_Exclusao, P.ID IdPerfil, P.Descricao Perfil
FROM USUARIO U
LEFT JOIN UsuarioTemPerfil RLC ON RLC.ID_Usuario = U.ID
LEFT JOIN PERFIL P ON P.ID = RLC.ID_Perfil;

SELECT ID, NOME FROM ELENCO;

SELECT ID, Descricao, ID_Filme FROM GENERO;
desc genero;

insert into Filme (Nome, Data_Registro, Sinopse, Video_URL, Imagem_URL) values ('Lagoa Azul','2018-06-23','Filme de sessão da tarde para familia com altas confusões','https://www.youtube.com/embed/Ge3mM4g1ls8?rel=0','http://br.web.img3.acsta.net/c_215_290/medias/nmedia/18/90/95/91/20122128.jpg');
insert into Filme (Nome, Data_Registro, Sinopse, Video_URL, Imagem_URL) values ('Se eu fosse você','2018-01-10','Filme Nacional','https://www.youtube.com/embed/uj3qjnpXLmM?rel=0','https://upload.wikimedia.org/wikipedia/pt/thumb/1/1a/P%C3%B4ster_Se_Eu_Fosse_Voc%C3%AA.jpg/230px-P%C3%B4ster_Se_Eu_Fosse_Voc%C3%AA.jpg');
insert into Filme (Nome, Data_Registro, Sinopse, Video_URL, Imagem_URL) values ('Transformers 5','2017-07-15','O gigante Optimus Prime embarcou em uma das missões mais difíceis de sua vida: encontrar, no espaço sideral, os Quintessons, seres que possivelmente são os responsáveis pela criação da raça Transformers.','https://www.youtube.com/embed/sgnO5fO46pE?rel=0','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOZLG4_dsygSh6FTZIt9owZp3pPdLAOB5P7a945eulSfd_aXRr');

insert into Genero (Descricao, ID_Filme) values ('Drama, Romance, Aventura', 1);
insert into Genero (Descricao, ID_Filme) values ('Comédia, Drama', 2);
insert into Genero (Descricao, ID_Filme) values ('Ação Aventura', 3);

SELECT * FROM FILME;

SELECT * FROM GENERO;