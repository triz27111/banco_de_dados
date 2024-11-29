create table tb_livro(
    id_livro int primary key auto_increment,
	titulo varchar(100) not null,
	autor varchar(100) not null,
	genero varchar(40) not null,
	editora varchar(50),
	ano_publicacao int,
	numero_exemplar int not null
);

create table tb_membro(
   id_membro int primary key auto_increment,
   nome varchar(100) not null,
   endereco varchar(100),
   telefone varchar(20) not null,
   email varchar(100) not null,
   data_registro date not null
);


insert into tb_livro(
  titulo,
  autor,
  genero,
  editora,
  ano_publicacao,
  numero_exemplar
)
values(
  'Olhos vazios',
  'Charlie Donlea',
  'Suspense',
  'Faro',
  2023,
  2
);

select * from tb_livro

insert into tb_livro(
  titulo,
  autor,
  genero,
  editora,
  ano_publicacao,
  numero_exemplar
);
values(
  'Blade Runner',
  'Philip K. Dick',
  'Ficção',
  'Aleph',
  2019,
  1
);

update tb_livro
   set titulo = 'Blade runner, os androides sonham'
  where id_livro = 9;
  
 select* from tb_livro;
 
 update tb_livro
   set titulo = 'Blade runner, os androides sonham'
  where id_livro = 9;
  
 select* from tb_livro;