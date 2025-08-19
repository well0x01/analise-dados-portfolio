-- ============================================
-- 🧑‍💼 Top Vendedores - AdventureWorks
-- Objetivo: identificar os 5 vendedores com maior faturamento total.
-- Recursos: CTE + RANK (Window Function)
-- ============================================

USE AdventureWorksDW2022;

WITH VendasVendedores AS (
    SELECT 
        E.FirstName + ' ' + E.LastName AS [VENDEDOR],
        SUM(FS.SalesAmount) AS [FATURAMENTO_TOTAL],
        RANK() OVER (ORDER BY SUM(FS.SalesAmount) DESC) AS rk
    FROM FactResellerSales AS FS
    INNER JOIN DimEmployee AS E ON E.EmployeeKey = FS.EmployeeKey
    GROUP BY E.FirstName, E.LastName
)
SELECT 
    VENDEDOR, FATURAMENTO_TOTAL
FROM VendasVendedores
WHERE rk <= 5
ORDER BY FATURAMENTO_TOTAL DESC;
