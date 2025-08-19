-- ============================================
-- 📈 Vendas Acumuladas por Ano - Contoso
-- Objetivo: calcular o total anual e o acumulado mês a mês.
-- Recursos: SUM() + OVER (Window Function)
-- ============================================

USE ContosoRetailDW;

SELECT 
    D.CalendarYear AS [ANO],
    D.CalendarMonth AS [MÊS],
    SUM(S.SalesAmount) AS [FATURAMENTO_MENSAL],
    SUM(SUM(S.SalesAmount)) OVER (
        PARTITION BY D.CalendarYear 
        ORDER BY D.CalendarMonth
    ) AS [ACUMULADO_ANO]
FROM FactSales AS S
INNER JOIN DimDate AS D ON D.DateKey = S.DateKey
GROUP BY D.CalendarYear, D.CalendarMonth
ORDER BY D.CalendarYear, D.CalendarMonth;
