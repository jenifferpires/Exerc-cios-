#Update dos dados do Carlos. 


UPDATE Clientes
SET Data_Nascimento = '1996-08-25', 
    ID_Cliente = 101,
    Estado_Civil = 'S', 
    Email = 'carlosca@gmail.com', 
    Renda_Anual = 90000, 
    Escolaridade = 'Pós-graduado'
WHERE Nome = 'Carlos';

Select * From Clientes


#Contagem de clientes que aparecem mais de uma vez # 

SELECT Nome, COUNT(*) AS Qtd 
FROM Clientes 
GROUP BY Nome 
HAVING COUNT(*) > 1;

#Selecionando o Id do cliente. 

SELECT ID_Cliente
FROM Clientes
WHERE Nome = 'Carlos';

#Update UPDATE Clientes
SET Nome = 'Carla'
WHERE ID_Cliente = '101';

#  Adicione uma coluna de identificação: Se você ainda não tiver uma coluna que diferencie os registros de "Carlos" 
#(como um timestamp de criação ou um número de registro único), adicione uma à sua tabela. #

ALTER TABLE Clientes
ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

