INSERT INTO Departamento VALUES
(1 , "Producao" , "Porta 3 coredor 4"),
(2 , "Desenvolvimento" , "Corredor 10"),
(3 , "Vendas" , "Sala principal 1"),
(4 , "Compras" , "Sala comercial"),
(5 , "Analise" , "Sala ADM");

INSERT INTO Colaborador VALUES
(1111111 , " Jean" , "jean_as@Gmail.com" , "Chefe" , "2022-10-10", 1),
(2222222 , " Carlos" , "Carloss@Gmail.com" , "Vendedora" , "2012-8-5", 3),
(3333333 , " Maria" , "MArimari@Gmail.com" , "Compradora" , "2022-3-4", 4),
(4444444 , " Jaime" , "Jaimesas@Gmail.com" , "Dev" , "2020-5-5", 2),
(5555555 , " Joao" , "Joooao@Gmail.com" , "PRoducao" , "2024-11-11", 1),
(6666666 , " Tercilio" , "Tilo@Gmail.com" , "Peao" , "2025-10-10", 5),
(7777777 , " Maraiana" , "Marianinha@Gmail.com" , "Gerente" , "2018-1-1", 5);

INSERT INTO Categoria VALUES
(1, "Computação"),
(2, "Rede"),
(3, "Impressão"),
(4, "Mobilidade"),
(5, "Servidores");


INSERT INTO Fornecedor VALUES
(12121212 , "Intel" , "43 1 2234-4364" , "Jaragua"),
(13131313 , "AMD" , "43 1 33333-43333" , "Guaramirim"),
(14141414 , "Lata" , "43 1 2222-2222" , "irajai"),
(15515151 , "Silicio" , "13 16 55555-33445" , "saoBento"),
(16161616 , "Vidro" , "13 16 6666-56666" , "Sarra");


INSERT INTO Equipamento VALUES
(1 , "Grande", "GTa", "A12","2026-10-10", "Novo", 1 ,12121212, 1111111 ),
(2 , "Pequeno", "Lata", "AI123","2025-12-12", "Usado", 2 ,13131313, 7777777 ),
(3 , "Agua", "quebom", "Mi82","2022-1-1", "Velho", 5 ,12121212, 3333333 ),
(4 , "Produz Muito", "caixa", "NV23","2021-5-2", "Gasto", 3 ,15515151, 6666666 ),
(5 , "Legal", "Lata", "Deis12","2026-12-12", "Na caixa", 4 ,14141414, 3333333 ),
(6 , "Bonito", "Kafta", "Debian23","2020-1-10", "Velho", 1 ,15515151, 2222222 ),
(7 , "Grande", "Absurdo", "Wind10","2018-12-11", "Novo", 2 ,16161616, 1111111 );
INSERT INTO Chamados VALUES
(1 , "Quebrou " , "Muito prioritario" , "Finalizando", "2026-12-11" , "2026-12-12", 1 ,1111111),
(2 , "Quebrou " , "Muito prioritario" , "Quase pronto", "2025-11-11" , "2026-11-12", 3 ,7777777),
(3 , "Quebrou " , "Muito prioritario" , "Fazendo", "2024-2-11" , "2025-2-12", 4 ,4444444),
(4 , "Quebrou " , "Muito prioritario" , "Desistindo", "2023-3-11" , "2024-2-12", 5 ,2222222),
(5 , "Quebrou " , "Muito prioritario" , "Finalizando", "2022-4-11" , "2023-5-12", 2 ,6666666),
(6 , "Quebrou " , "Muito prioritario" , "Finalizando", "2021-5-11" , "2022-11-12", 5 ,2222222),