-- ============================================
-- 🧑‍💼 Ranking de Funcionários - AdventureWorksDW2022
-- Objetivo: listar os funcionários com maior volume de vendas.
-- Recursos: JOIN + SUM + GROUP BY + ORDER BY
-- Insight esperado: identificar os vendedores de maior performance.
-- ============================================

USE AdventureWorksDW2022;

SELECT TOP 10
    E.FirstName + ' ' + E.LastName AS [FUNCIONÁRIO],
    SUM(FRS.SalesAmount) AS [FATURAMENTO TOTAL]
FROM
    FactResellerSales AS FRS
INNER JOIN DimEmployee AS E ON E.EmployeeKey = FRS.EmployeeKey
GROUP BY
    E.FirstName, E.LastName
ORDER BY
    [FATURAMENTO TOTAL] DESC;
