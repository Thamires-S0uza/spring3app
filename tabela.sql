drop schema if exists spring;

drop user if exists 'user'@'localhost';

create schema spring;

create user 'user'@'localhost' identified by 'pass123';

grant select, insert, delete, update on spring.* to user@'localhost';

use spring;

create table voc_vocabulo (
 voc_id bigint primary key auto_increment,
 voc_termo varchar(100) not null,
 voc_significado varchar(200) not null,
 voc_versao int not null default 0,
 voc_data_hora_cadastro datetime not null,
 voc_data_hora_desativacao datetime
);

insert into voc_vocabulo (voc_termo, voc_significado, voc_versao, voc_data_hora_cadastro)
 values ('tupla', 'linha de uma tabela', 1, '2023-10-01 10:00:06'),
 ('tupla', 'conjunto de atributos relacionados', 2, current_timestamp());
