CREATE DATABASE testeSAEP;
USE testeSAEP;

CREATE TABLE FUNCIONÁRIO (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (id)
) 

CREATE TABLE PEDIDO_REPOSICAO (
    ID int(11) NOT NULL AUTO_INCREMENT,
    ID_FUNCIONARIO int(11) NOT NULL,
    Nome_medicamento varchar(100) NOT NULL,
    Quantidade int(11) NOT NULL,
    Categoria enum('genérico', 'referência', 'controlado', 'higiene') NOT NULL,
    Urgência enum('alta', 'média', 'baixa') NOT NULL,
    Data_solicitação date NOT NULL,
    Status enum('solicitado', 'em separação ou recebido', 'sendo solicitado o valor padrão') NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONÁRIO(id)
) 