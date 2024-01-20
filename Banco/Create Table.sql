CREATE table USUARIO(
CODIGO INTEGER not null, 
NOME VARCHAR(50) NOT null, 
DIREITO CHAR(1) NOT NULL,
SENHA VARCHAR(12) NOT null,
CONSTRAINT PK_USUARIO PRIMARY KEY(CODIGO))


CREATE table TAREFA(
CODIGO integer NOT null, 
NOME VARCHAR(30) NOT NULL,
TIPO CHAR(1) NOT null, 
CONSTRAINT PK_TAREFA PRIMARY KEY (CODIGO));

CREATE TABLE USUARIO_TAREFA(
COD_USUARIO integer, 
COD_TAREFA integer, 
CONSTRAINT PK_USUARIO_TAREFA primary key (COD_USUARIO,COD_TAREFA),
CONSTRAINT FK_USUARIO foreign KEY (COD_USUARIO)  REFERENCES  usuario(CODIGO),
CONSTRAINT FK_TAREFA FOREIGN KEY (COD_TAREFA) references TAREFA(CODIGO)
);

