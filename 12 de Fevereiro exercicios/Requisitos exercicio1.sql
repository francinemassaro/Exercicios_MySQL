USE db_rhEmpresa;

CREATE TABLE tb_funcionarios ( -- Criar a tabela funcionários
id BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL, 
email VARCHAR(60) NOT NULL, 
telefone VARCHAR(20) NOT NULL,
salario VARCHAR(7),
ativo BOOLEAN,
PRIMARY KEY(id)
);

SELECT * FROM tb_funcionarios; -- Consultar a tabela toda

-- inserir dado
INSERT INTO db_rhEmpresa.tb_funcionarios (nome, email, telefone, salario, ativo) VALUES ("Francine","francine@francine.com","73289983", 5000, true);
INSERT INTO db_rhEmpresa.tb_funcionarios (nome, email, telefone, salario, ativo) VALUES ("EntreOutroNome","ColoqueEmail","TELEFONE", "Salario", "true or false");

 -- select que retorne os funcionários com o salário maior do que 2000
 SELECT * FROM db_rhEmpresa.tb_funcionarios WHERE salario>2000;
 -- select que retorne os funcionários com o salário menor do que 2000
  SELECT * FROM db_rhEmpresa.tb_funcionarios WHERE salario<2000;
