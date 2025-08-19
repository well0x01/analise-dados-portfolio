-- ============================================
-- 📊 Produtos Mais Vendidos - AdventureWorksDW2022
-- Objetivo: identificar os produtos com maior quantidade vendida.
-- Recursos: JOIN + SUM + GROUP BY + ORDER BY
-- Insight esperado: destacar os produtos mais populares e estratégicos.
-- ============================================

USE AdventureWorksDW2022;

SELECT TOP 10
    P.EnglishProductName AS [PRODUTO],
    SUM(FIS.SalesAmount) AS [FATURAMENTO TOTAL]
FROM
    FactInternetSales AS FIS
INNER JOIN DimProduct AS P ON P.ProductKey = FIS.ProductKey
GROUP BY
    P.EnglishProductName
ORDER BY
    [FATURAMENTO TOTAL] DESC;

