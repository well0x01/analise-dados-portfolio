-- ============================================
-- 🔄 Clientes Mais Frequentes - AdventureWorks
-- Objetivo: listar os 10 clientes que mais realizaram compras.
-- Recursos: COUNT + DENSE_RANK (Window Function)
-- ============================================

USE AdventureWorksDW2022;

WITH FrequenciaClientes AS (
    SELECT 
        C.FirstName + ' ' + C.LastName AS [CLIENTE],
        COUNT(FS.SalesOrderNumber) AS [N_COMPRAS],
        DENSE_RANK() OVER (ORDER BY COUNT(FS.SalesOrderNumber) DESC) AS rk
    FROM FactInternetSales AS FS
    INNER JOIN DimCustomer AS C ON C.CustomerKey = FS.CustomerKey
    GROUP BY C.FirstName, C.LastName
)
SELECT TOP 10
    CLIENTE, N_COMPRAS
FROM FrequenciaClientes
ORDER BY N_COMPRAS DESC;
