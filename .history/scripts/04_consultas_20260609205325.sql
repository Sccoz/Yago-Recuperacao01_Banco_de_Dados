-- Anexo 3 – Lista de Consultas SQL

-- Liste todos os departamentos cadastrados na empresa.
SELECT Nome_Departamento AS departamentos 
FROM Departamento;


-- Liste o nome, cargo e e-mail corporativo de todos os colaboradores.
SELECT Nome_colaborador AS nome , Email_Corporativo AS Email, Cargo AS Cargo
FROM Colaborador;


-- Exiba o patrimônio, descrição e fabricante de todos os equipamentos cadastrados.
SELECT Patrimonio AS Patrimonio ,Descricao_Equipamento AS Descricao,Fabricante_Equipamento AS Fabricante
FROM Equipamento;


-- Exiba apenas a descrição e o status dos equipamentos.
SELECT Descricao_Equipamento AS Descricao, Status_Equipamento AS Statos
FROM Equipamento;


-- Liste os colaboradores admitidos após uma determinada data informada pelo professor.
SELECT Nome_colaborador
FROM Colaborador 
WHERE Data_Admissao > "2020-01-01";


-- Exiba todos os equipamentos cuja data de aquisição seja posterior a uma data informada pelo professor.
SELECT Modelo_Equipamento as Modelo , Descricao_Equipamento AS Descricao
FROM Equipamento
WHERE Data_Aquisicao_Equipamento > "2025-01-01";


-- Liste todos os fornecedores localizados em uma cidade específica.
SELECT Nome_Fornecedor AS Fornecedor
FROM Fornecedor
WHERE Cidade = 'Jaragua';


-- Exiba os equipamentos pertencentes a uma categoria informada pelo professor.
SELECT Modelo_Equipamento as Modelo , Descricao_Equipamento AS Descricao
FROM Equipamento
WHERE  Categoria_Id = 1;


-- Liste os colaboradores que ocupam um cargo informado pelo professor.
SELECT Nome_colaborador
FROM Colaborador 
WHERE Cargo = 'Dev';


-- Exiba os fornecedores que possuem telefone cadastrado.
SELECT Nome_Fornecedor AS Fornecedor
FROM Fornecedor
WHERE Telefone IS NOT NULL;


-- Liste os equipamentos cuja descrição contenha uma palavra ou trecho informado pelo professor.
SELECT Modelo_Equipamento as Modelo , Descricao_Equipamento AS Descricao
FROM Equipamento
WHERE Descricao_Equipamento LIKE '%Grande%';


-- Exiba os chamados com status "Fechado".
SELECT Id_Chamado AS id_ ,  Descricao_Problema AS Problema
FROM Chamados 
WHERE Status_Chamado = 'Finalizando';



-- Liste os chamados com prioridade "Alta".
SELECT Id_Chamado AS id_ ,  Descricao_Problema AS Problema
FROM Chamados 
WHERE Prioridade = 'Muito prioritario';

-- Exiba todos os equipamentos ordenados pela descrição em ordem alfabética.
SELECT Modelo_Equipamento as Modelo , Descricao_Equipamento AS Descricao
FROM Equipamento
ORDER BY  Descricao_Equipamento;

-- Liste os equipamentos ordenados pela data de aquisição da mais recente para a mais antiga. DESC
SELECT Modelo_Equipamento as Modelo , Descricao_Equipamento AS Descricao
FROM Equipamento
ORDER BY  Data_Aquisicao_Equipamento DESC;


-- Exiba a quantidade total de colaboradores cadastrados na empresa.
SELECT COUNT(Nome_colaborador) AS Quantidade_Colaboradores
FROM Colaborador;

-- Apresente a quantidade total de equipamentos cadastrados.
SELECT COUNT(Patrimonio) AS Quantidade_Equipamentos
FROM Equipamento;


-- Exiba a data mais antiga de admissão entre todos os colaboradores.
SELECT Nome_colaborador AS Colaborador , Data_Admissao
FROM Colaborador
WHERE Data_Admissao = (
    SELECT MIN(Data_Admissao)
    FROM Colaborador
);


-- Apresente a quantidade de equipamentos cadastrados em cada categoria.
SELECT Categoria.Nome_Categoria , COUNT(Patrimonio) AS quantidade 
FROM Equipamento
JOIN Categoria ON Categoria.Id_Categoria = Equipamento.Categoria_Id
GROUP BY Categoria_Id;


-- Exiba a quantidade de equipamentos cadastrados por fornecedor.
SELECT Fornecedor.Nome_Fornecedor , COUNT(Patrimonio) AS quantidade 
FROM Equipamento
JOIN Fornecedor ON Fornecedor.CNPJ = Equipamento.CNPJ_Fornecedor
GROUP BY CNPJ_Fornecedor;


-- Liste o nome dos colaboradores e o nome dos departamentos aos quais pertencem.
SELECT Colaborador.Nome_colaborador as Nome , Departamento.Nome_Departamento as Departamento
FROM Colaborador
JOIN Departamento ON Departamento.Id_Departamento = Colaborador.Departamento_ID;


-- Exiba a descrição dos equipamentos juntamente com o nome de suas respectivas categorias.
SELECT Equipamento.Descricao_Equipamento AS Descricao, Equipamento.Modelo_Equipamento AS Modelo , Categoria.Nome_Categoria AS Categoria
FROM Equipamento
JOIN Categoria ON Equipamento.Categoria_Id = Categoria.Id_Categoria;


-- Liste a descrição do equipamento, a razão social do fornecedor e o status do equipamento.
SELECT Equipamento.Descricao_Equipamento AS Equipamento, Fornecedor.Nome_Fornecedor AS Fornecedor , Equipamento.Status_Equipamento AS Statos
FROM Equipamento
JOIN Fornecedor ON Fornecedor.CNPJ = Equipamento.CNPJ_Fornecedor;


-- Exiba o(s) equipamento(s) com a data de aquisição mais recente cadastrada no sistema.
SELECT Descricao_Equipamento AS Descricao , Modelo_Equipamento AS modelo , Data_Aquisicao_Equipamento AS Data_
FROM Equipamento
WHERE Data_Admissao = (
    SELECT MAX(Data_Aquisicao_Equipamento)
    FROM Equipamento
);


-- Liste os colaboradores cuja data de admissão seja superior à data média de admissão dos colaboradores cadastrados.
