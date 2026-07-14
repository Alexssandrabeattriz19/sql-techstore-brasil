
--- CASE DE ANÁLISE DE ESTOQUE ---


--- CRIAÇÃO BANCO DE DADOS ---
create database TechStore_Brasil


--- CRIANDO TABELA ---
create table Produtos (
	 ID					int
	,Produto			varchar(100)

	,Categoria			varchar(50)
	,Marca				varchar(50)
	,Preco				decimal(10,2)
	,Estoque			int
	,Cidade				varchar(50)
	)

--- DADOS DOS PRODUTOS ---
insert into Produtos (ID,Produto,Categoria,Marca,Preco,Estoque,Cidade)
values ('1', 'Notebook Inspiron 15', 'Notebook', 'Dell', 4299.90, 12, 'São Paulo')
,('2', 'Notebook Aspire 5', 'Notebook', 'Acer', 3899.90, 9, 'Campinas')
,('3', 'Notebook Galaxy Book', 'Notebook', 'Samsung', 4799.90, 7, 'Belo Horizonte')
,('4', 'Monitor UltraWide 29', 'Monitor', 'LG', 1399.90, 18, 'Curitiba')
,('5', 'Monitor 24 Full HD', 'Monitor', 'Samsung', 899.90, 22, 'São Paulo')
,('6', 'Mouse G203', 'Periféricos', 'Logitech', 159.90, 45, 'Goiânia')
,('7', 'Mouse MX Master 3S', 'Periféricos', 'Logitech', 649.90, 14, 'Porto Alegre')
,('8', 'Teclado Mecânico Alloy', 'Periféricos', 'HP', 399.90, 19, 'Florianópolis')
,('9', 'Teclado Sem Fio K380' , 'Periféricos', 'Logitech', 249.90, 31, 'Campinas')
,('10', 'SSD NV2 500GB', 'Armazenamento', 'Kingston', 279.90, 50, 'São Paulo')
,('11', 'SSD NV3 1TB', 'Armazenamento', 'Kingston', 499.90, 34, 'Belo Horizonte')
,('12', 'HD Externo 2TB', 'Armazenamento', 'Samsung', 549.90, 15, 'Curitiba')
,('13', 'Headset Gamer', 'Headset', 'HP', 329.90, 28, 'Goiânia')
,('14', 'Headset Zone Vibe', 'Headset', 'Logitech', 699.90, 10, 'São Paulo')
,('15', 'Impressora Laser', 'Impressora','HP',1199.90,8,'Campinas')
,('16', 'Impressora Multifuncional', 'Impressora', 'HP', 899.90, 13, 'Porto Alegre')
,('17', 'Monitor Gamer 27', 'Monitor', 'LG', 1999.90, 11,'Florianópolis')
,('18', 'SSD A400 240GB', 'Armazenamento', 'Kingston', 199.90, 60, 'São Paulo')
,('19', 'Notebook Vostro', 'Notebook', 'Dell', 5299.90, 5, 'Belo Horizonte')
,('20', 'Mouse Sem Fio M170', 'Periféricos', 'Logitech', 89.90, 70, 'Curitiba')
,('21', 'Teclado Gamer RGB', 'Periféricos', 'HP', 289.90, 23, 'São Paulo')
,('22', 'Monitor 32 4K', 'Monitor', 'Samsung', 2899.90, 6, 'Campinas')
,('23', 'Headset Office', 'Headset', 'HP', 179.90, 26, 'Goiânia')
,('24', 'SSD KC3000 2TB', 'Armazenamento', 'Kingston', 1099.90, 9, 'Porto Alegre')
,('25', 'Notebook Nitro V', 'Notebook', 'Acer', 5799.90, 4, 'Florianópolis')
,('26', 'Impressora Tank', 'Impressora', 'HP', 1499.90, 7, 'Belo Horizonte')
,('27', 'Mouse Vertical', 'Periféricos', 'Logitech', 219.90, 18, 'São Paulo')
,('28', 'Monitor Office 22', 'Monitor', 'LG', 749.90, 20, 'Curitiba')
,('29', 'SSD Externo 1TB', 'Armazenamento', 'Samsung', 799.90, 12,'Campinas')
,('30','Teclado Compacto', 'Periféricos', 'Logitech', 199.90, 35, 'Porto Alegre')

--- MOSTRAR TODOS OS PRODUTOS ---
SELECT * FROM Produtos

--- QUAIS PRODUTOS CUSTAM MAIS DE R$ 2.000? ---
SELECT * FROM Produtos
WHERE	Preco > 2000.00 

--- MOSTRAR SOMENTE PRODUTOS DA DELL ---
SELECT * FROM Produtos
WHERE   Marca = 'Dell'

--- MOSTRAR PRODUTOS DA DELL QUE CUSTAM ACIMA DE R$ 3.000 ---
SELECT * FROM Produtos
WHERE	Marca = 'Dell'
AND		Preco > 3000.00

--- QUAIS PRODUTOS POSSUEM PREÇO ENTRE R$ 500 E R$ 1.500? ---
SELECT * FROM Produtos
WHERE		Preco
BETWEEN		'500.00' AND '1500.00'

--- MOSTRAR PRODUTOS DAS MARCAS ---
SELECT * FROM Produtos
WHERE	Marca		in ('Dell', 'Samsung', 'Logitech')

--- MOSTRAR PRODUTOS VENDIDOS NA CIDADE DE SÃO PAULO ---
SELECT * FROM Produtos
WHERE	Cidade = 'São Paulo'

--- MOSTRAR PRODUTOS VENDIDOS EM CAMPINAS OU BELO HORIZONTE ---
SELECT * FROM Produtos
WHERE	Cidade	in ('Campinas' , 'Belo Horizonte')

--- QUAIS PRODUTOS POSSUEM ESTOQUE MAIOR QUE 20 UNIDADES ---
SELECT * FROM Produtos
WHERE	Estoque > 20

--- MOSTRAR NOTEBOOKS ENTRE R$ 3.000 E R$ 6.000 ---
SELECT * FROM Produtos
WHERE	Categoria = 'Notebook' 
AND		Preco BETWEEN 3000 AND 6000