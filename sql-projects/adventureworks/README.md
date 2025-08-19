# 📊 Projetos SQL - AdventureWorksDW2022

Este diretório contém consultas SQL realizadas sobre o banco **AdventureWorksDW2022**, referência para BI e Data Warehousing.  
Os projetos incluem análises de **clientes, vendedores e categorias**, aplicando **agregações, CTEs e window functions**.

## 📁 Projetos

### 1. `vendas-por-categoria.sql`
- Lista o **total de vendas por categoria de produto**.
- Insights: permite avaliar quais categorias movimentam mais receita.

### 2. `ranking-lojas.sql`
- Exibe o **ranking de resellers (lojas revendedoras)** por faturamento.
- Insights: aponta os parceiros mais relevantes para o negócio.

### 3. `top-vendedores.sql`
- Lista os **5 vendedores com maior faturamento total**.
- Recursos: `CTE` + `RANK()`.
- Insights: destaca performance individual dos vendedores.

### 4. `clientes-compradores-frequentes.sql`
- Identifica os **clientes mais recorrentes em número de compras**.
- Recursos: `CTE` + `DENSE_RANK()`.
- Insights: auxilia estratégias de fidelização.

---

## 🔑 Técnicas Utilizadas
- Joins em tabelas fato e dimensões  
- Funções de agregação (`SUM`, `COUNT`)  
- `GROUP BY` + `HAVING`  
- Subqueries e `CTE`  
- Window Functions (`RANK`, `DENSE_RANK`)  

---
