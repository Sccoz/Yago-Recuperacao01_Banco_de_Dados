Create table Departamento(
    Id_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Departamento VARCHAR(100),
    Localizacao_Departamento VARCHAR(100)
);

Create table Colaborador(
    CPF INT AUTO_INCREMENT PRIMARY KEY,
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
    CNPJ INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Fornecedor VARCHAR(100),
    Localizacao_Departamento VARCHAR(100)
);