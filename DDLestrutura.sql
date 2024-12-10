-Criação do schema 

CREATE USER USR_FITNESS IDENTIFIED BY senha123;
GRANT CONNECT, RESOURCE TO USR_FITNESS;

-Seleção do schema
ALTER SESSION SET CURRENT_SCHEMA = USR_FITNESS;

-Criação da Tabela MEMBROS

CREATE TABLE MEMBROS (
    MEMBRO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    DATA_NASCIMENTO DATE,
    TELEFONE VARCHAR2(15),
    EMAIL VARCHAR2(100),
    PRIMARY KEY (MEMBRO_ID),
    CONSTRAINT EMAIL_UNICO UNIQUE (EMAIL)
);

-Criação da Tabela PLANOS_TREINAMENTO

CREATE TABLE PLANOS_TREINAMENTO (
    PLANO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    DESCRICAO CLOB,
    PRIMARY KEY (PLANO_ID)
);

-Criação da Tabela EXERCICIOS

CREATE TABLE EXERCICIOS (
    EXERCICIO_ID NUMBER NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    TIPO VARCHAR2(50),
    DESCRICAO CLOB,
    PRIMARY KEY (EXERCICIO_ID)
);

-Criação da Tabela ROTINAS_TREINAMENTO

CREATE TABLE ROTINAS_TREINAMENTO (
    ROTINA_ID NUMBER NOT NULL,
    PLANO_ID NUMBER NOT NULL,
    EXERCICIO_ID NUMBER NOT NULL,
    DURACAO_SEMANAS NUMBER NOT NULL,
    SERIES NUMBER CHECK (SERIES >= 1),
    REPETICOES NUMBER CHECK (REPETICOES >= 1),
    DESCANSO_SEGUNDOS NUMBER CHECK (DESCANSO_SEGUNDOS >= 0),
    PRIMARY KEY (ROTINA_ID),
    FOREIGN KEY (PLANO_ID) REFERENCES PLANOS_TREINAMENTO(PLANO_ID),
    FOREIGN KEY (EXERCICIO_ID) REFERENCES EXERCICIOS(EXERCICIO_ID)
);


-Criação da Tabela HISTORICO_TREINAMENTO


CREATE TABLE HISTORICO_TREINAMENTO (
    HISTORICO_ID NUMBER NOT NULL,
    MEMBRO_ID NUMBER NOT NULL,
    PLANO_ID NUMBER NOT NULL,
    DATA_INICIO DATE NOT NULL,
    DATA_FIM DATE,
    STATUS VARCHAR2(50),
    PRIMARY KEY (HISTORICO_ID),
    FOREIGN KEY (MEMBRO_ID) REFERENCES MEMBROS(MEMBRO_ID),
    FOREIGN KEY (PLANO_ID) REFERENCES PLANOS_TREINAMENTO(PLANO_ID),
    CONSTRAINT STATUS_CHECK CHECK (STATUS IN ('Ativo', 'Concluído', 'Cancelado'))
);