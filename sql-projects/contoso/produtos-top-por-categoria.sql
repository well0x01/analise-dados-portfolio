-- ============================================
-- 🏆 Produtos Top por Categoria - Contoso
-- Objetivo: identificar o produto mais vendido (quantidade) em cada categoria.
-- Recursos: CTE + ROW_NUMBER (Window Function)
-- ============================================

USE ContosoRetailDW;

WITH RankingProdutos AS (
    SELECT 
        PC.ProductCategoryName AS [CATEGORIA],
        P.ProductName AS [PRODUTO],
        SUM(S.SalesQuantity) AS [QTD_VENDIDA],
        ROW_NUMBER() OVER (
            PARTITION BY PC.ProductCategoryName 
            ORDER BY SUM(S.SalesQuantity) DESC
        ) AS rn
    FROM FactSales AS S
    INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
    INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
    INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
    GROUP BY PC.ProductCategoryName, P.ProductName
)
SELECT 
    CATEGORIA, PRODUTO, QTD_VENDIDA
FROM RankingProdutos
WHERE rn = 1
ORDER BY QTD_VENDIDA DESC;
