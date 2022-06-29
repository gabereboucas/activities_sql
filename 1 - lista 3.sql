CREATE TABLE cliente(
codcliente INTEGER NOT NULL,
nome VARCHAR(40),
rua VARCHAR(40),
cidade VARCHAR(40),
PRIMARY KEY (codcliente)
);

CREATE TABLE agencia(
codagencia INTEGER NOT NULL,
nomeagencia VARCHAR(40),
cidadeagencia VARCHAR(40),
ativo INTEGER NOT NULL  ,
PRIMARY KEY (codagencia)
);

CREATE TABLE conta(
    numeroconta INTEGER NOT NULL ,
    codagencia INTEGER NOT NULL,
    saldo DECIMAL (10,2)

    PRIMARY KEY(numeroconta)
    FOREIGN KEY (codagencia)
);

CREATE TABLE depositante(
    codcliente PRIMARY KEY ,
    numeroconta PRIMARY KEY ,

    CONSTRAINT PK_cliente PRIMARY KEY (codcliente),
    CONSTRAINT FK_conta FOREIGN KEY(numeroconta)
            REFERENCES clientes(codcliente)
    
); /*exercicio 2*/ 

