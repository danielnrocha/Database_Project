-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-09-22 05:52:44.534

-- tables
-- Table: cliente
CREATE TABLE cliente (
    id_cliente serial NOT NULL,
    id_pessoa serial NOT NULL,
    id_empresa serial NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)
);

-- Table: empresa
CREATE TABLE empresa (
    id_empresa serial NOT NULL,
    cnpj char(14) NOT NULL,
    nome varchar(60) NOT NULL,
    cep char(8) NOT NULL,
    porte_empresa varchar(60) NOT NULL,
    tipo_societario varchar(60) NOT NULL,
    CONSTRAINT empresa_pk PRIMARY KEY (id_empresa)
);

-- Table: entidade
CREATE TABLE entidade (
    id_entidade serial NOT NULL,
    nome varchar(60) NOT NULL,
    saldo float(9,2) NOT NULL,
    CONSTRAINT entidade_pk PRIMARY KEY (id_entidade)
);

-- Table: membro
CREATE TABLE membro (
    id_membro serial NOT NULL,
    id_pessoa serial NOT NULL,
    id_entidade serial NOT NULL,
    curso varchar(60) NOT NULL,
    cargo varchar(60) NOT NULL,
    area varchar(60) NOT NULL,
    data_entrada date NOT NULL,
    data_saida date NULL,
    CONSTRAINT membro_pk PRIMARY KEY (id_membro)
);

-- Table: pessoa
CREATE TABLE pessoa (
    id_pessoa serial NOT NULL,
    nome varchar(60) NOT NULL,
    data_nasc date NOT NULL,
    cpf char(11) NOT NULL,
    CONSTRAINT pessoa_pk PRIMARY KEY (id_pessoa)
);

-- Table: projeto
CREATE TABLE projeto (
    id_projeto int NOT NULL,
    id_entidade serial NOT NULL,
    id_empresa serial NOT NULL,
    valor float(9,2) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL,
    situacao varchar(60) NOT NULL,
    servico varchar(60) NOT NULL,
    digital bool NOT NULL,
    CONSTRAINT projeto_pk PRIMARY KEY (id_projeto)
);

-- Table: rel_membro_projeto
CREATE TABLE rel_membro_projeto (
    id_membro_projeto int NOT NULL,
    id_membro serial NOT NULL,
    id_projeto int NOT NULL,
    funcao varchar(60) NOT NULL,
    CONSTRAINT rel_membro_projeto_pk PRIMARY KEY (id_membro_projeto)
);

-- Table: telefone_empresa
CREATE TABLE telefone_empresa (
    id_tel_empresa serial NOT NULL,
    empresa_id_empresa serial NOT NULL,
    telefone char(9) NOT NULL,
    ddd char(2) NOT NULL,
    CONSTRAINT telefone_empresa_pk PRIMARY KEY (id_tel_empresa)
);

-- Table: telefone_pessoa
CREATE TABLE telefone_pessoa (
    id_tel_pessoa serial NOT NULL,
    id_pessoa serial NOT NULL,
    telefone char(9) NOT NULL,
    ddd char(2) NOT NULL,
    CONSTRAINT telefone_pessoa_pk PRIMARY KEY (id_tel_pessoa)
);

-- Table: transacao
CREATE TABLE transacao (
    id_transacao serial NOT NULL,
    valor float(9,2) NOT NULL,
    validade date NOT NULL,
    id_entidade serial NOT NULL,
    CONSTRAINT transacao_pk PRIMARY KEY (id_transacao)
);

-- foreign keys
-- Reference: cliente_empresa (table: cliente)
ALTER TABLE cliente ADD CONSTRAINT cliente_empresa FOREIGN KEY cliente_empresa (empresa_id_empresa)
    REFERENCES empresa (id_empresa);

-- Reference: cliente_pessoa (table: cliente)
ALTER TABLE cliente ADD CONSTRAINT cliente_pessoa FOREIGN KEY cliente_pessoa (pessoa_id_pessoa)
    REFERENCES pessoa (id_pessoa);

-- Reference: membro_entidade (table: membro)
ALTER TABLE membro ADD CONSTRAINT membro_entidade FOREIGN KEY membro_entidade (entidade_id_entidade)
    REFERENCES entidade (id_entidade);

-- Reference: membro_pessoa (table: membro)
ALTER TABLE membro ADD CONSTRAINT membro_pessoa FOREIGN KEY membro_pessoa (pessoa_id_pessoa)
    REFERENCES pessoa (id_pessoa);

-- Reference: projeto_empresa (table: projeto)
ALTER TABLE projeto ADD CONSTRAINT projeto_empresa FOREIGN KEY projeto_empresa (empresa_id_empresa)
    REFERENCES empresa (id_empresa);

-- Reference: projeto_entidade (table: projeto)
ALTER TABLE projeto ADD CONSTRAINT projeto_entidade FOREIGN KEY projeto_entidade (entidade_id_entidade)
    REFERENCES entidade (id_entidade);

-- Reference: rel_membro_projeto_membro (table: rel_membro_projeto)
ALTER TABLE rel_membro_projeto ADD CONSTRAINT rel_membro_projeto_membro FOREIGN KEY rel_membro_projeto_membro (membro_id_membro)
    REFERENCES membro (id_membro);

-- Reference: rel_membro_projeto_projeto (table: rel_membro_projeto)
ALTER TABLE rel_membro_projeto ADD CONSTRAINT rel_membro_projeto_projeto FOREIGN KEY rel_membro_projeto_projeto (projeto_id_projeto)
    REFERENCES projeto (id_projeto);

-- Reference: telefone_empresa (table: telefone_empresa)
ALTER TABLE telefone_empresa ADD CONSTRAINT telefone_empresa_empresa FOREIGN KEY telefone_empresa_empresa (empresa_id_empresa)
    REFERENCES empresa (id_empresa);

-- Reference: telefone_pessoa_pessoa (table: telefone_pessoa)
ALTER TABLE telefone_pessoa ADD CONSTRAINT telefone_pessoa_pessoa FOREIGN KEY telefone_pessoa_pessoa (pessoa_id_pessoa)
    REFERENCES pessoa (id_pessoa);

-- Reference: transacao_entidade (table: transacao)
ALTER TABLE transacao ADD CONSTRAINT transacao_entidade FOREIGN KEY transacao_entidade (entidade_id_entidade)
    REFERENCES entidade (id_entidade);

-- End of file.

