
drop database qa_bb_projetos_sonar;

CREATE DATABASE qa_bb_projetos_sonar;
use qa_bb_projetos_sonar;
create table qa_projetos(
	ID int auto_increment not null,
    SIGLA varchar(10) not null,
    QA varchar(50) not null,
    DATA_EXTRACAO varchar(10) not null,
    HORA_EXTRACAO varchar(10) not null,
    PROJETO varchar(100) not null,
    BUILD varchar(100) not null,
    MES_DIA varchar(30) not null,
    ANO varchar(4) not null,
    HORARIO varchar(10) not null,
    BUGS int not null,
    NOTA_BUGS varchar(2) not null,
    CODE_SMELLS int not null,
    NOTA_CODE_SMELLS varchar(2) not null,
    VULNERABILITIES int not null,
    NOTA_VULNERABILITIES varchar(2) not null,
    COVERAGE float not null,
    primary key (ID)
);

create user 'bb_qa'@'localhost' identified by 'bbqa_123';
grant all privileges on qa_bb_projetos_sonar.* to 'bb_qa'@'localhost';
flush privileges;

