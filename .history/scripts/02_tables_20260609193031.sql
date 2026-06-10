--CRIACAO DE DPARTAMENTO E SEUS COLABORADORES : 

Create table Departamento(
    Id_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Departamento VARCHAR(100),
    Localizacao_Departamento VARCHAR(100)
);

Create table Colaborador(
    CPF INT  PRIMARY KEY,
    Nome_colaborador VARCHAR(100),
    Email_Corporativo VARCHAR(100) UNIQUE,
    Cargo VARCHAR(100),
    Data_Admissao DATE,
    Departamento_ID INT,

    FOREIGN KEY (Departamento_ID)
        REFERENCES Departamento(Id_Departamento)
);

--CRIACAO DA PARTE NECSESSARIA PARA O EQUIPAMENTO : 

Create table Categoria(
    Id_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Categoria VARCHAR(100)
);

Create table Fornecedor(
    CNPJ INT PRIMARY KEY,
    Nome_Fornecedor VARCHAR(100),
    Telefone VARCHAR(14),
    Cidade VARCHAR(100)
);

--CRIACAO DE EQUIPAMENTO : 

Create table Equipamento(
    Patrimonio INT AUTO_INCREMENT PRIMARY KEY,
    Descricao_Equipamento TEXT,
    Fabricante_Equipamento VARCHAR(50),
    Modelo_Equipamento VARCHAR(100),
    Data_Aquisicao_Equipamento DATE,
    Status_Equipamento VARCHAR(100),

    Categoria_Id INT,
    CNPJ_Fornecedor INT,
    CPF_Colaborador INT,

    FOREIGN KEY (Categoria_Id)
        REFERENCES Categoria(Id_Categoria),

    FOREIGN KEY (CNPJ_Fornecedor)
        REFERENCES Fornecedor(CNPJ),

    FOREIGN KEY (CPF_Colaborador)
        REFERENCES Colaborador(CPF)
);

--CRIACAO DOS CHAMADOS : 
Create table Chamados(
    Id_Chamado INT AUTO_INCREMENT PRIMARY KEY,
    Descricao_Problema TEXT,
    Prioridade VARCHAR(100),
    Status_Chamado VARCHAR(100),
    Data_Abertura_Chamado DATE,
    Data_Fechamento_Chamado DATE,

    Equipamento_Patrimonio INT,
    CPF_Colaborador_Chamado INT,

    FOREIGN KEY (Equipamento_Patrimonio)
        REFERENCES Equipamento(Patrimonio),

    FOREIGN KEY (CPF_Colaborador_Chamado)
        REFERENCES Colaborador(CPF)
);


--CRIACAO FINAL DE MANUTENCOENS : 
