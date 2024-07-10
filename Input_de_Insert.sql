/*Insert Empresa*/
insert into EMPRESA (id_empresa, razao_social, inativo) values (1, 'Concessionaria Muxo Ldta.', true);
insert into EMPRESA (id_empresa, razao_social, inativo) values (2, 'Concessionaria Flashdog', true);
insert into EMPRESA (id_empresa, razao_social, inativo) values (3, 'Concessionaria Quatz', true);
insert into EMPRESA (id_empresa, razao_social, inativo) values (4, 'Concessionaria Youbridge', false);
insert into EMPRESA (id_empresa, razao_social, inativo) values (5, 'Concessionaria Devbug Ldta.', false);
insert into EMPRESA (id_empresa, razao_social, inativo) values (6, 'Concessionaria Jayo', false);
insert into EMPRESA (id_empresa, razao_social, inativo) values (7, 'Concessionaria Feedfish', true);
insert into EMPRESA (id_empresa, razao_social, inativo) values (8, 'Concessionaria Flipopia Ldta.', false);
insert into EMPRESA (id_empresa, razao_social, inativo) values (9, 'Concessionaria Feednation', false);
insert into EMPRESA (id_empresa, razao_social, inativo) values (10, 'Concessionaria Thoughtbridge Ldta.', true);
/*Insert para cadastrar os produtos*/

insert into produtos (id_produto, descricao, inativo) values (125, 'Siena', true);

insert into produtos (id_produto, descricao, inativo) values (588, 'Voyage', true);

insert into produtos (id_produto, descricao, inativo) values (896, 'Cruzer', true);

insert into produtos (id_produto, descricao, inativo) values (312, 'Palio', false);

insert into produtos (id_produto, descricao, inativo) values (478, 'Gol', true);

insert into produtos (id_produto, descricao, inativo) values (523, 'Celta', false);

insert into produtos (id_produto, descricao, inativo) values (764, 'Hilux', true);

insert into produtos (id_produto, descricao, inativo) values (815, 'Saveiro', false);

insert into produtos (id_produto, descricao, inativo) values (237, 'Strada', true);

insert into produtos (id_produto, descricao, inativo) values (689, 'Uno', false);

/*Insert para cadastrar os vendedores*/

insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (3, 'Bruno', 'Consultor de Vendas', 3000.00, '2018-02-20', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (4, 'Daniela', 'Vendedor', 2500.00, '2021-01-10', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (5, 'Eduardo', 'Consultor de Vendas', 3000.00, '2022-05-17',false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (7, 'Gustavo', 'Assistente de Vendas', 2500.00, '2019-11-11', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (8, 'Helena', 'Coordenador de Vendas', 3500.00, '2020-03-22', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (10, 'João', 'Consultor de Vendas', 3000.00, '2021-12-05', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (11, 'Karen', 'Consultor de Vendas', 3000.00, '2019-04-10', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (12, 'Lucas', 'Coordenador de Vendas', 3500.00, '2022-07-07', false);
insert into VENDEDORES (id_vendedor, nome, cargo,salario,data_admissao,inativo) VALUES (13, 'Mariana', 'Vendedor', 2500.00, '2020-10-18', false);
INSERT INTO VENDEDORES (id_vendedor, nome, cargo, salario,data_admissao, data_demissao,inativo) VALUES (2,'Carla','Vendedor',2500.00,'2019-06-01','2021-09-08',true);
INSERT INTO VENDEDORES (id_vendedor, nome, cargo, salario,data_admissao, data_demissao,inativo) VALUES (14, 'Nicolas', 'Vendedor', 2500.00, '2018-01-25', '2022-06-14', true);
INSERT INTO VENDEDORES (id_vendedor, nome, cargo, salario,data_admissao, data_demissao,inativo) VALUES (9, 'Isabela', 'Consultor de Vendas', 3000.00, '2018-08-15', '2021-07-30', true);
INSERT INTO VENDEDORES (id_vendedor, nome, cargo, salario,data_admissao, data_demissao,inativo) VALUES (6, 'Fernanda', 'Consultor de Vendas', 3000.00, '2017-09-25', '2020-12-01', true);

/*Insert para cadastrar o configProdutos*/
insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (1,5,10,125,23500.00,24999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (2,7,10,588,33500.00,34999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (3,2,10,896,53500.00,54999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (4,6,8,478,18500.00,19999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (5,8,10,125,19500.00,20999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (6,8,10,689,15500.00,16999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (7,2,10,764,88500.00,89999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (8,6,8,815,38500.00,39999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (9,10,5,237,36500.00,37999.99);

insert into CONFIG_PRECO_PRODUTO (id_config_preco_produto, id_vendedor,id_empresa,id_produto,preco_minimo,preco_maximo) values (10,10,5,523,28500.00,29999.99);

/*Insert para cadastrar os Clientes*/

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (1,'Ana Costa','2020-04-20',2,10,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (2,'Bruno Oliveira','2019-06-05',2,10,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (3,'Carla Silva','2022-05-20',5,10,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (4,'Daniel Santos','2017-10-01',6,8,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (5,'Elaine Pereira','2019-11-20',7,10,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (6,'Fernando Souza','2020-03-23',8,10,false);

INSERT INTO clientes (id_cliente,razao_social,data_cadastro,id_vendedor,id_empresa,inativo) values (7,'Gabriela Lima','2021-12-10',10,5,false);

/*Insert para cadastrar os Pedidos*/
insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (1,10,3,108000,'2020-10-12','Venda de 2x Cruzer');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (2,10,1,39000,'2020-08-09','Venda de 2x Gol');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (3,10,6,33000,'2021-01-27','Venda de 2x Uno');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (4,8,4,88800,'2020-07-17','Venda de 1x Hilux');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (5,10,5,177600,'2020-06-14','Venda de 2x Hilux');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (6,10,6,83200,'2020-06-05','Venda de 4x Siena');

insert into pedido (id_pedido,id_empresa,id_cliente,valor_total,data_emissao,situacao) values (7,5,7,185000,'2021-06-14','Venda de 5x Strada');

/*Insert para input dos itens solicitados pelos clientes*/
insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (1,1,896,54000.00,2);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (2,2,478,19500.00,2);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (3,3,689,16500.00,2);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (4,4,764,88800.00,1);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (5,5,764,88800.00,2);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (6,6,125,20800.00,4);

insert into itens_pedido (id_item_pedido,id_pedido,id_produto,preco_praticado,quantidade) values (7,7,237,37000.00,5);
