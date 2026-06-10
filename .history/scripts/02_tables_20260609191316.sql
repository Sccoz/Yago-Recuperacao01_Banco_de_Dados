Create table Departamento(
    Id_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Departamento VARCHAR(100),
    Localizacao_Departamento VARCHAR(100)
);

Create table Colaborador(
    CPF INT AUTO_INCREMENT PRIMARY KEY,
    Nome_colaborador VARCHAR(100),
    Email_Corporativo VARCHAR(100) UNIQUE,
    Nome_colaborador VARCHAR(100),
);

