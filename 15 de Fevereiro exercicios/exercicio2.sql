USE db_pizzaria_legal;

-- CRIANDO A TABELA PIZZA
CREATE TABLE tb_pizza (
id_da_pizza BIGINT AUTO_INCREMENT,
Sabor VARCHAR (60),
preco DOUBLE,
PRIMARY KEY (id_da_pizza)
);

-- CRIANDO A CATEGORIA
CREATE TABLE tb_categoria (
id_do_cliente BIGINT AUTO_INCREMENT,
Nome VARCHAR (60) NOT NULL,
Sobrenome VARCHAR (60) NOT NULL,
Endereco VARCHAR (60) NOT NULL,
Contato BIGINT NOT NULL,

PRIMARY KEY (id_do_cliente),
FOREIGN KEY (id_do_cliente) REFERENCES tb_pizza (id_da_pizza)
);


-- INSERINDO OS DADOS DA CATEGORIA
INSERT INTO tb_categoria (Nome, Sobrenome, Endereco, Contato) VALUES ("Yarin", "Lemos", "Rua Vitória, nº 15", "11987877127");
INSERT INTO tb_categoria (Nome, Sobrenome, Endereco, Contato) VALUES ("Francine", "Massaro", "Estrada Lavras, 2193", "16982134388");
INSERT INTO tb_categoria (nome, sobrenome, endereco, contato) VALUES ("Scarlett", "Sacchi", "Estrada Lavras, 2321", "11987870987");
INSERT INTO tb_categoria (nome, sobrenome, endereco, contato) VALUES ("Marcelino", "Felix", "Rua Roberto Armbrust, nº 15", "11948321948");
INSERT INTO tb_categoria (nome, sobrenome, endereco, contato) VALUES ("Fuku", "Shima", "Rua Japão, nº 145", "11987874838");

-- INSERINDO ALGUNS SABORES
INSERT INTO tb_pizza (sabor, preco) VALUES ("Frango com Catupiry VEGANO", 45.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Quatro Queijos VEGANO", 35.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Portuguesa VEGANA", 42.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Marguerita VEGAN", 55.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Pizza de Milho VEGAN", 34.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Calabresa Vegan", 49.30);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Doce - Brigadeiro Vegan", 39.50);
INSERT INTO tb_pizza (sabor, preco) VALUES ("Doce - Romeu e Julieta Vegan", 38.35);

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_pizza WHERE preco > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE preco >29 AND preco <60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_pizza WHERE Sabor LIKE "C%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_categoria
INNER JOIN tb_pizza ON tb_pizza.id_da_pizza=tb_categoria.id_do_cliente;

-- Faça um select onde traga todos os Produtos de uma categoria específica 
-- (exemplo todos os produtos que são pizza doce).
SELECT * FROM tb_pizza WHERE sabor LIKE "doce%";

