/*Objetivo em trazer os funcionarios cadastrados em ordem decrescente atraves do seu salario*/
select id_vendedor,nome,cargo,salario from vendedores v order by salario desc;

/*********************************************************************************************/
/*Objetivo em trazer a listagem de vendas ordenando pela a sua data de emissao*/
select * from pedido p order by data_emissao;

/*********************************************************************************************/
/*Objetivo em trazer o faturamento de cada cliente*/
select P.id_cliente,C.razao_social ,sum(valor_total) as Faturamento from pedido p 
inner join clientes c on C.id_cliente = P.id_cliente 
group by P.id_cliente,C.razao_social ; 

/**********************************************************************************************/
/*Objetivo em trazer o faturamento de cada empresa*/
select p.id_empresa,e.razao_social ,sum(valor_total) as faturamento from pedido p
inner join empresa e on e.id_empresa = p.id_empresa 
group by p.id_empresa,e.razao_social  ;

/**********************************************************************************************/
/*Objetivo em trazer o faturamento de cada vendedor, foi necessario realizar a junção das tabelas clientes,pedido e vendedores para buscar os seus dados respectivos de forma correta*/
select c.id_vendedor,v.nome,v.cargo,SUM(p.valor_total) as FATURAMENTO from clientes c 
inner join pedido p on p.id_cliente = c.id_cliente
inner join vendedores v on v.id_vendedor = c.id_vendedor 
group by c.id_vendedor,v.nome,v.cargo;

/*************************************************************************/
/*Consulta com objetivo de trazer a listagem dos dados conforme a regra solicitada, realizando as junçoes das tabelas necessarias*/
select  p.id_produto,p.descricao,p2.id_cliente,c.razao_social as RAZAO_SOCIAL_CLIENTE,
	c.id_vendedor as VendedorPedido,v.nome as VENDEDOR,v.cargo,
	p2.id_empresa,e.razao_social,
	cpp.preco_minimo||' / '||cpp.preco_maximo as Minimo_Maximo,ip.preco_praticado
from itens_pedido ip 
	inner join produtos p on p.id_produto = ip.id_produto 
	inner join pedido p2 on p2.id_pedido = ip.id_pedido 
	inner join empresa e on e.id_empresa = p2.id_empresa 
	inner join clientes c on c.id_cliente  = p2.id_cliente 
	inner join vendedores v on v.id_vendedor = c.id_vendedor 
	inner join config_preco_produto cpp on cpp.id_vendedor = c.id_vendedor and cpp.id_empresa = p2.id_empresa and cpp.id_produto = ip.id_produto;