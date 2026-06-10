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


-- Exiba os chamados com status "Fechado".
-- Liste os chamados com prioridade "Alta".
-- Exiba todos os equipamentos ordenados pela descrição em ordem alfabética.
-- Liste os equipamentos ordenados pela data de aquisição da mais recente para a mais antiga.
-- Exiba a quantidade total de colaboradores cadastrados na empresa.
-- Apresente a quantidade total de equipamentos cadastrados.
-- Exiba a data mais antiga de admissão entre todos os colaboradores.
-- Apresente a quantidade de equipamentos cadastrados em cada categoria.
-- Exiba a quantidade de equipamentos cadastrados por fornecedor.
-- Liste o nome dos colaboradores e o nome dos departamentos aos quais pertencem.
-- Exiba a descrição dos equipamentos juntamente com o nome de suas respectivas categorias.
-- Liste a descrição do equipamento, a razão social do fornecedor e o status do equipamento.
-- Exiba o(s) equipamento(s) com a data de aquisição mais recente cadastrada no sistema.
-- Liste os colaboradores cuja data de admissão seja superior à data média de admissão dos colaboradores cadastrados.
