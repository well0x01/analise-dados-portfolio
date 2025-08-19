-- ============================================
-- 📊 Vendas por Categoria - ContosoRetailDW
-- Objetivo: calcular o faturamento total por categoria de produto.
-- Recursos: JOIN + GROUP BY + SUM + ORDER BY
-- Insight esperado: identificar as categorias mais lucrativas.
-- ============================================

USE ContosoRetailDW;

SELECT
    PC.ProductCategoryName AS [CATEGORIA],
    SUM(S.SalesAmount) AS [FATURAMENTO TOTAL]
FROM
    FactSales AS S
INNER JOIN DimProduct AS P ON P.ProductKey = S.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
GROUP BY
    PC.ProductCategoryName
ORDER BY
    [FATURAMENTO TOTAL] DESC;

