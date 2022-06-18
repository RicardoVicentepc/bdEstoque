use bdEstoque
--Alteração em 10% para os produtos unilever
Select * from tbProduto
UPDATE tbProduto
SET valorProduto = valorProduto + ((10 * valorProduto) / 100)
WHERE codFabricante = 1
Select * from tbProduto

--Diminuição dos em 7% em produtos P&G
select* from tbProduto
UPDATE tbProduto
SET valorProduto = valorProduto - ((7* valorProduto)/100)
WHERE codFabricante = 2
select * from tbProduto

--Diminuição de 30 itens de produtos do Atacadao
select * from tbProduto
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFabricante = 3
select * from tbProduto

--Alterar o nome da Adriana
select * from tbCliente
UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5
select * from tbCliente

--5% de desconto em total de vendas em fev
select * from tbVenda
UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - ((5*valorTotalVenda)/100)
where dataVenda >= '01-02-2020' OR dataVenda <= '28-02-2020'
select * from tbVenda

--Remocao do produto Salsicha Hot Dog Sadia
DELETE  tbzItensVenda WHERE codProduto= 5
DELETE tbProduto Where codProduto = 5
select * from tbProduto

--Alteracao de sigla feminina
select * from tbCliente
UPDATE tbCliente
set sexoCliente = 'fem'
where sexoCliente = 'f'
select * from tbCliente

--Alteracao de sigla masculina
select * from tbCliente
UPDATE tbCliente
set sexoCliente = 'masc'
where sexoCliente = 'm'
select * from tbCliente