# 📊 Projetos SQL - ContosoRetailDW

Este diretório contém consultas SQL realizadas sobre o banco **ContosoRetailDW**, utilizado como referência em Análise de Dados.  
Os projetos combinam conceitos de **joins, agregações, subqueries, CTEs e window functions**.

## 📁 Projetos

### 1. `vendas-por-categoria.sql`
- Lista o **faturamento total por categoria de produto**.
- Insights: permite identificar quais categorias têm maior peso no faturamento da empresa.

### 2. `ranking-lojas.sql`
- Classifica as lojas por **volume de vendas**.
- Insights: revela quais unidades têm melhor desempenho e ajudam em decisões de expansão.

### 3. `produtos-top-por-categoria.sql`
- Identifica o **produto mais vendido dentro de cada categoria**.
- Recursos: `CTE` + `ROW_NUMBER()`.
- Insights: mostra produtos “carro-chefe” em cada segmento.

### 4. `vendas-acumuladas-por-ano.sql`
- Calcula o **faturamento mensal** e o **acumulado por ano**.
- Recursos: `SUM() OVER()` (window function).
- Insights: análise temporal para acompanhar crescimento e sazonalidade.

---

## 🔑 Técnicas Utilizadas
- Joins entre tabelas fato e dimensão  
- Funções de agregação (`SUM`, `COUNT`)  
- `GROUP BY` + `HAVING`  
- Subqueries e `CTE`  
- Window Functions (`ROW_NUMBER`, `SUM OVER`)  

---
