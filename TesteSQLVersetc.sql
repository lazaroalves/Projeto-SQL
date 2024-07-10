CREATE TABLE EMPRESA (
    id_empresa int not null primary key,
    razao_social VARCHAR(255) NOT NULL,
    inativo BOOLEAN NOT NULL
);


-- Criação da tabela PRODUTOS
CREATE TABLE PRODUTOS (
    id_produto  int not null primary key,
    descricao VARCHAR(255),
    inativo BOOLEAN NOT NULL
);


-- Criação da tabela VENDEDORES
CREATE TABLE VENDEDORES (
    id_vendedor int not null primary key,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario NUMERIC(10, 2) NOT NULL,
    data_admissao DATE NOT NULL,
	data_demissao DATE ,
    inativo BOOLEAN NOT NULL 
);

-- Criação da tabela CONFIG_PRECO_PRODUTO
CREATE TABLE CONFIG_PRECO_PRODUTO (
    id_config_preco_produto int not null primary key,
    id_vendedor INT NOT NULL,
    id_empresa INT NOT NULL,
    id_produto INT NOT NULL,
    preco_minimo NUMERIC(10, 2) NOT NULL,
    preco_maximo NUMERIC(10, 2) NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES VENDEDORES(id_vendedor),
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);



-- Criação da tabela CLIENTES
CREATE TABLE CLIENTES (
    id_cliente int not null PRIMARY KEY,
    razao_social VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL,
    id_vendedor INT NOT NULL,
    id_empresa INT NOT NULL,
    inativo BOOLEAN NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES VENDEDORES(id_vendedor),
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa)
);

-- Criação da tabela PEDIDO
CREATE TABLE PEDIDO (
    id_pedido int not null PRIMARY KEY,
    id_empresa INT NOT NULL,
    id_cliente INT NOT NULL,
    valor_total NUMERIC(10, 2) NOT NULL,
    data_emissao DATE NOT NULL,
    situacao VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);

-- Criação da tabela ITENS_PEDIDO
CREATE TABLE ITENS_PEDIDO (
    id_item_pedido int not null PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    preco_praticado NUMERIC(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);