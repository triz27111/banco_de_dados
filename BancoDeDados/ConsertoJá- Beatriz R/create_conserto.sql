create database consertoja_ds1a_a

grant all privileges on consertoja_ds1a_a.* to biaaa@'%';

create table tb_cliente(
	cpf_cnpj varchar(30) primary key,
	nome_completo varchar(100),
	endereco varchar(100)not null,
	email varchar(60)not null,
	telefone varchar(20) not null
);

insert into tb_cliente(
	nome_completo,
	cpf_cnpj,
	endereco,
	telefone,
	email
)
values (
	'Ana Paula Souza',
	'275.456.438-10',
	'Rua Osvaldo Cruz N61',
	'11 912925-2150',
	'anapaula010@gmail.com'
);

insert into tb_cliente(
	nome_completo,
	cpf_cnpj,
	endereco,
	telefone,
	email
)
values (
	'Fabricio Camargo',
	'159.324.498-25',
	'Rua Flores Verdes N90',
	'11 989352-3331',
	'fabricio07@gmail.com'
);

insert into tb_cliente(
	nome_completo,
	cpf_cnpj,
	endereco,
	telefone,
	email
)
values (
	'Rafaella Reis',
	'333.456.879-05',
	'Rua Florinea N89',
	'11 95016-9253',
	'rafellareais6@gmail.com'
);

insert into tb_cliente(
	nome_completo,
	cpf_cnpj,
	endereco,
	telefone,
	email
)
values (
	'Erika Matins',
	'333.496.879-05',
	'Rua Franca N89',
	'11 95015-5553',
	'erikamartins32@gmail.com'
);

create table tb_contrato(
    ID_manutencao int primary key auto_increment,
	data_inicio date not null,
	data_termino date not null,
	desc_servico varchar(200) not null,
	valor_mensal decimal,
	cpf_cnpj varchar(30) primary key
);

insert into tb_contrato(
	data_inicio,
	data_termino,
	desc_servico,
	valor_mensal,
	cpf_cnpj
	
)
values(
	'2024-08-6',
	'2024-08-8',
	'Manutenção trimestral, reparos e peças. Atendimento em até 48h.',
	'250.00',
	'333.496.879-05'
);

insert into tb_contrato(
	data_inicio,
	data_termino,
	desc_servico,
	valor_mensal,
	cpf_cnpj
	
)
values(
	'2024-08-5',
	'2024-08-9',
	'Manutenção semestral e reparos urgentes. Atendimento em até 24h.',
	'350.00',
	'333.456.879-05'
);

insert into tb_contrato(
	data_inicio,
	data_termino,
	desc_servico,
	valor_mensal,
	cpf_cnpj
	
)
values(
	'2022-09-15',
	'2024-09-20',
	'Suporte contínuo, atualizações e reparos. Atendimento em até 48h.',
	'450.00',
	'159.324.498-25'
);

insert into tb_contrato(
	data_inicio,
	data_termino,
	desc_servico,
	valor_mensal,
	cpf_cnpj
	
)
values(
	'2024-09-09',
	'2024-09-12',
	'Manutenção anual e reparos urgentes. Troca de tela e bateria em até 24h.',
	'500.00',
	'275.456.438-10'
);

create table tb_Manutencao(
    cpf_cnpj varchar(30) not null,
	telefone varchar(20) not null,
	numero_serial int(20) not null,
	data_manutencao date not null,
	desc_problema varchar(100) not null,
	desc_solucao varchar(100) not null,
	pecas_trancadas varchar(100) not null,
	custo_manutencao decimal

);

insert into tb_Manutencao(
    cpf_cnpj,
	telefone,
	numero_serial,
	data_manutencao,
	desc_problema,
	desc_solucao ,
	pecas_trancadas ,
	custo_manutencao  
)
values(
	'275.456.438-10',
	'(11)991212165',
	'6545342',
	
	'Áudio cortado e problemas de conectividade intermitente.',
	'Limpeza interna, atualização de firmware e substituição de módulos de conectividade.',
	'Módulo de conectividade.',
	300.00,
	'544.511.267.09',
	,
	'6545342'
);


create table tb_equipamentos(
   numero_serial int(20) primary key,
   desc_equipamento varchar(200) not null,
   data_aquisicao varchar(100) not null,
   status varchar(100)
);

insert into tb_equipamentos(
	numero_serial,
	desc_equipamento,
	data_aquisicao,
	status
)
values (
	'0.0001',
	'Computador DELL inspiron 24',
	'2024-06-20',
	'Quebrado'
);

insert into tb_equipamentos(
	numero_serial,
	desc_equipamento,
	data_aquisicao,
	status
)
values (
	'1.0002',
	'SmartphoneMotorolla G54',
	'2024-05-08',
	'Arrumado'
);

insert into tb_equipamentos(
	numero_serial,
	desc_equipamento,
	data_aquisicao,
	status
)
values (
	'5.0089',
	'Apple Ipad 9Th Geração',
	'2024-08-12',
	'Consertando'
);

insert into tb_equipamentos(
	numero_serial,
	desc_equipamento,
	data_aquisicao,
	status
)
values (
	'4.0063',
	'Apple Iphone 15',
	'2024-09-08',
	'Quebrado'
);

create table tb_tecnico(
   nome_completo varchar(100) not null,
   cpf varchar(20) not null,
   telefone varchar(20) not null,
   especializacao varchar(100) not null, 
   email varchar(100)
);

insert into tb_tecnico(
	nome_completo,
	cpf,
	telefone,
	especializacao,
	email
)
values (
	'Reginaldo Macedo',
	'111.222.333-45',
	'Computadores',
	'11 95555-6666',
	'reginaldomacedo98@gmail.com'
);

insert into tb_tecnico(
	nome_completo,
	cpf,
	telefone,
	especializacao,
	email
)
values (
	'Thais Martins',
	'555.333.777-99',
	'Computadores',
	'11 99999-8888',
	'thaismartins88@gmail.com'
);

insert into tb_tecnico(
	nome_completo,
	cpf,
	telefone,
	especializacao,
	email
)
values (
	'Erik Martins',
	'444.456.850-06',
	'Celulares',
	'11 95016-9253',
	'erikmartins05@gmail.com'
);

insert into tb_tecnico(
	nome_completo,
	cpf,
	telefone,
	especializacao,
	email
)
values (
	'Tabata Rodrigus',
	'423.258.850-06',
	'Celulares',
	'11 95016-9253',
	'tabatarod1203@gmail.com'
);

select * from tb_cliente order by nome asc;

select * from tb_cliente order by nome desc;

select nome, email, especializacao from tb_tecnico order by nome, email, especializacao asc;

select * from tb_equipamento where year(data_aquisicao) = 2023;

select * from tb_equipamento where month(data_aquisicao) between 1 and 6;

select * from tb_contrato where valor_mensal => 200;

select * from tb_contrato where (valor_mensal) > 200 and year(data_inicio) = 2024;