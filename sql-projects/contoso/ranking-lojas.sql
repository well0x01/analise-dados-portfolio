-- ============================================
-- 🏬 Ranking de Lojas - ContosoRetailDW
-- Objetivo: listar as lojas com maior volume de vendas.
-- Recursos: JOIN + SUM + ORDER BY DESC + TOP
-- Insight esperado: destacar as lojas mais rentáveis.
-- ============================================

USE ContosoRetailDW;

SELECT TOP 10
    ST.StoreName AS [LOJA],
    SUM(S.SalesAmount) AS [FATURAMENTO TOTAL]
FROM
    FactSales AS S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
GROUP BY
    ST.StoreName
ORDER BY
    [FATURAMENTO TOTAL] DESC;

