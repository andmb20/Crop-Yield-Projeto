-- ============================================================
-- CROP YIELD PROJECT
-- Etapa 2 — Exploração e validação dos dados com SQL
-- ============================================================

-- ============================================================
-- 1. BANCO DE DADOS
-- ============================================================

CREATE DATABASE crop_yield;
USE crop_yield;


-- ============================================================
-- 2. VISÃO INICIAL DAS TABELAS
-- ============================================================

-- Verificação rápida dos dados importados.

SELECT * FROM pesticides LIMIT 5;
SELECT * FROM rainfall LIMIT 5;
SELECT * FROM temp LIMIT 5;
SELECT * FROM yield LIMIT 5;
SELECT * FROM yield_df LIMIT 5;


-- Contagem inicial de registros.

SELECT COUNT(*) AS total_linhas FROM pesticides;
SELECT COUNT(*) AS total_linhas FROM rainfall;
SELECT COUNT(*) AS total_linhas FROM temp;
SELECT COUNT(*) AS total_linhas FROM yield;
SELECT COUNT(*) AS total_linhas FROM yield_df;


-- ============================================================
-- 3. COBERTURA E PERÍODO DOS DADOS
-- ============================================================

-- pesticides

SELECT
    MIN(Year) AS menor_ano,
    MAX(Year) AS maior_ano,
    COUNT(DISTINCT Year) AS qtd_anos,
    COUNT(DISTINCT Area) AS qtd_areas
FROM pesticides;


-- rainfall

SELECT
    MIN(Year) AS menor_ano,
    MAX(Year) AS maior_ano,
    COUNT(DISTINCT Year) AS qtd_anos,
    COUNT(DISTINCT Area) AS qtd_areas
FROM rainfall;


-- temp

SELECT
    MIN(year) AS menor_ano,
    MAX(year) AS maior_ano,
    COUNT(DISTINCT year) AS qtd_anos,
    COUNT(DISTINCT country) AS qtd_paises
FROM temp;


-- yield_df

SELECT
    MIN(Year) AS menor_ano,
    MAX(Year) AS maior_ano,
    COUNT(DISTINCT Year) AS qtd_anos,
    COUNT(DISTINCT Area) AS qtd_areas,
    COUNT(DISTINCT Item) AS qtd_culturas
FROM yield_df;


-- yield

SELECT
    MIN(Year) AS menor_ano,
    MAX(Year) AS maior_ano,
    COUNT(DISTINCT Year) AS qtd_anos,
    COUNT(DISTINCT Area) AS qtd_areas,
    COUNT(DISTINCT Item) AS qtd_culturas,
    COUNT(DISTINCT Element) AS qtd_elementos
FROM yield;


-- ============================================================
-- 4. VALIDAÇÃO DE GRANULARIDADE
-- ============================================================

-- ------------------------------------------------------------
-- pesticides
-- ------------------------------------------------------------
-- Teste da granularidade Area + Item + Year.

SELECT
    COUNT(*) AS registros,
    COUNT(DISTINCT CONCAT(Area, '|', Item, '|', Year))
        AS combinacoes_area_item_ano
FROM pesticides;


-- Verificação adicional:
-- Area + Year também é único.

SELECT
    Area,
    Year,
    COUNT(*) AS registros,
    COUNT(DISTINCT Item) AS itens
FROM pesticides
GROUP BY Area, Year
HAVING COUNT(*) > 1;


-- ------------------------------------------------------------
-- rainfall
-- ------------------------------------------------------------
-- Teste da granularidade Area + Year.

SELECT
    COUNT(*) AS registros,
    COUNT(DISTINCT CONCAT(Area, '|', Year))
        AS combinacoes_area_ano
FROM rainfall;


-- Procura por duplicidades em Area + Year.

SELECT
    Area,
    Year,
    COUNT(*) AS quantidade
FROM rainfall
GROUP BY Area, Year
HAVING COUNT(*) > 1
ORDER BY quantidade DESC;


-- Identificação de áreas com quantidade de registros
-- inferior ao padrão esperado de 31 registros.

SELECT
    Area,
    COUNT(*) AS quantidade,
    MIN(Year) AS menor_ano,
    MAX(Year) AS maior_ano
FROM rainfall
GROUP BY Area
HAVING COUNT(*) < 31
ORDER BY quantidade;


-- Verificação específica da cobertura de Bahamas.

SELECT
    Year
FROM rainfall
WHERE Area = 'Bahamas'
ORDER BY Year;


-- ------------------------------------------------------------
-- yield
-- ------------------------------------------------------------
-- Validação da granularidade principal da tabela de rendimento.

SELECT
    COUNT(*) AS registros,
    COUNT(DISTINCT CONCAT(Area, '|', Item, '|', Year))
        AS combinacoes_area_item_ano
FROM yield;


-- ------------------------------------------------------------
-- temp
-- ------------------------------------------------------------
-- Teste da granularidade Country + Year.

SELECT
    country,
    year,
    COUNT(*) AS quantidade
FROM temp
GROUP BY country, year
HAVING COUNT(*) > 1
ORDER BY quantidade DESC;


-- Quantidade de combinações Country + Year com mais de um registro.

SELECT
    COUNT(*) AS combinacoes_com_duplicatas
FROM (
    SELECT
        country,
        year
    FROM temp
    GROUP BY country, year
    HAVING COUNT(*) > 1
) AS duplicadas;


-- Distribuição da quantidade de registros por Country + Year.

SELECT
    quantidade,
    COUNT(*) AS combinacoes
FROM (
    SELECT
        country,
        year,
        COUNT(*) AS quantidade
    FROM temp
    GROUP BY country, year
) AS granularidade
GROUP BY quantidade
ORDER BY quantidade;


-- Verifica se a multiplicidade representa apenas duplicatas exatas
-- ou se existem diferentes temperaturas dentro da mesma combinação.

SELECT
    COUNT(*) AS combinacoes_area_ano,
    SUM(
        CASE
            WHEN temperaturas_distintas = 1 THEN 1
            ELSE 0
        END
    ) AS uma_temperatura_distinta,
    SUM(
        CASE
            WHEN temperaturas_distintas > 1 THEN 1
            ELSE 0
        END
    ) AS varias_temperaturas_distintas
FROM (
    SELECT
        country,
        year,
        COUNT(DISTINCT avg_temp) AS temperaturas_distintas
    FROM temp
    GROUP BY country, year
) q;


-- Exemplo para inspeção das múltiplas observações.

SELECT *
FROM temp
WHERE country = 'United States'
  AND year = 1850
ORDER BY avg_temp;


-- ------------------------------------------------------------
-- yield_df
-- ------------------------------------------------------------
-- Verificação da granularidade Area + Item + Year.

SELECT
    COUNT(*) AS registros,
    COUNT(DISTINCT CONCAT(Area, '|', Item, '|', Year))
        AS combinacoes_area_item_ano
FROM yield_df;


-- Quantidade de combinações replicadas e maior nível de replicação.

SELECT
    COUNT(*) AS combinacoes,
    SUM(
        CASE
            WHEN qtd_registros > 1 THEN 1
            ELSE 0
        END
    ) AS com_replicacao,
    MAX(qtd_registros) AS maior_replicacao
FROM (
    SELECT
        Area,
        Item,
        Year,
        COUNT(*) AS qtd_registros
    FROM yield_df
    GROUP BY Area, Item, Year
) q;


-- ============================================================
-- 5. INVESTIGAÇÃO DA ESTRUTURA DO yield_df
-- ============================================================

-- Exemplo de uma combinação com múltiplas observações.

SELECT
    Area,
    Item,
    Year,
    COUNT(*) AS registros,
    COUNT(DISTINCT `avg_temp`) AS temperaturas_distintas,
    COUNT(DISTINCT `hg/ha_yield`) AS yields_distintos,
    COUNT(DISTINCT pesticides_tonnes) AS pesticidas_distintos,
    COUNT(DISTINCT average_rain_fall_mm_per_year)
        AS chuvas_distintas
FROM yield_df
WHERE Area = 'Brazil'
  AND Item = 'Cassava'
  AND Year = 1991
GROUP BY Area, Item, Year;


-- Verificação da replicação para India/Cassava/1990.

SELECT
    COUNT(*) AS registros,
    COUNT(DISTINCT `hg/ha_yield`) AS yields_distintos,
    COUNT(DISTINCT pesticides_tonnes) AS pesticidas_distintos,
    COUNT(DISTINCT average_rain_fall_mm_per_year)
        AS chuvas_distintas,
    COUNT(DISTINCT avg_temp) AS temperaturas_distintas
FROM yield_df
WHERE Area = 'India'
  AND Item = 'Cassava'
  AND Year = 1990;


-- Verifica se a quantidade de registros do yield_df acompanha
-- a quantidade de observações de temperatura em temp.

SELECT
    y.Area,
    y.Item,
    y.Year,
    COUNT(*) AS registros_yield_df,
    COUNT(DISTINCT y.avg_temp) AS temperaturas_yield_df,
    t.qtd_temperaturas AS temperaturas_temp
FROM yield_df y
JOIN (
    SELECT
        country,
        year,
        COUNT(*) AS qtd_temperaturas
    FROM temp
    GROUP BY country, year
) t
    ON y.Area = t.country
   AND y.Year = t.year
GROUP BY
    y.Area,
    y.Item,
    y.Year,
    t.qtd_temperaturas
HAVING COUNT(*) > 1
ORDER BY registros_yield_df DESC
LIMIT 20;


-- ============================================================
-- 6. RELACIONAMENTO yield × yield_df
-- ============================================================

-- Verifica se o rendimento presente no yield_df corresponde
-- ao rendimento da tabela yield.
--
-- MAX() é utilizado apenas para eliminar a replicação existente
-- no yield_df. O valor agrícola deve permanecer constante dentro
-- de cada Area + Item + Year.

SELECT
    COUNT(*) AS combinacoes,
    SUM(
        CASE
            WHEN y.Value = d.`hg/ha_yield` THEN 1
            ELSE 0
        END
    ) AS mesmo_yield,
    SUM(
        CASE
            WHEN y.Value <> d.`hg/ha_yield` THEN 1
            ELSE 0
        END
    ) AS yield_diferente
FROM yield y
JOIN (
    SELECT
        Area,
        Item,
        Year,
        MAX(`hg/ha_yield`) AS `hg/ha_yield`
    FROM yield_df
    GROUP BY Area, Item, Year
) d
    ON y.Area = d.Area
   AND y.Item = d.Item
   AND y.Year = d.Year;


-- ============================================================
-- 7. RELACIONAMENTO pesticides × yield_df
-- ============================================================

-- pesticides possui granularidade Area + Year.
-- Por isso, a comparação é feita após eliminar a replicação
-- existente no yield_df.

SELECT
    COUNT(*) AS combinacoes,
    SUM(
        CASE
            WHEN ABS(d.pesticides_tonnes - p.Value) < 1
            THEN 1
            ELSE 0
        END
    ) AS diferenca_menor_que_1,
    MAX(
        ABS(d.pesticides_tonnes - p.Value)
    ) AS maior_diferenca
FROM (
    SELECT
        Area,
        Year,
        MAX(pesticides_tonnes) AS pesticides_tonnes
    FROM yield_df
    GROUP BY Area, Year
) d
JOIN pesticides p
    ON d.Area = p.Area
   AND d.Year = p.Year;


-- ============================================================
-- 8. RELACIONAMENTO rainfall × yield_df
-- ============================================================

-- Verifica se o valor de chuva presente no yield_df
-- corresponde ao valor da tabela rainfall.

SELECT
    COUNT(*) AS combinacoes,
    SUM(
        CASE
            WHEN ABS(
                d.average_rain_fall_mm_per_year
                - r.average_rain_fall_mm_per_year
            ) < 0.01
            THEN 1
            ELSE 0
        END
    ) AS chuva_compativel,
    MAX(
        ABS(
            d.average_rain_fall_mm_per_year
            - r.average_rain_fall_mm_per_year
        )
    ) AS maior_diferenca
FROM (
    SELECT
        Area,
        Year,
        MAX(average_rain_fall_mm_per_year)
            AS average_rain_fall_mm_per_year
    FROM yield_df
    GROUP BY Area, Year
) d
JOIN rainfall r
    ON d.Area = r.Area
   AND d.Year = r.Year;


-- ============================================================
-- 9. RELACIONAMENTOS yield × pesticides
-- ============================================================

-- Teste inicial com Area + Item + Year.
-- Demonstra que Item não faz parte da granularidade de pesticides.

SELECT
    COUNT(*) AS total_yield,
    COUNT(p.Area) AS com_pesticidas
FROM yield y
LEFT JOIN pesticides p
    ON y.Area = p.Area
   AND y.Item = p.Item
   AND y.Year = p.Year;


-- Relacionamento correto: Area + Year.

SELECT
    COUNT(*) AS total_yield,
    COUNT(p.Area) AS com_pesticidas,
    COUNT(*) - COUNT(p.Area) AS sem_pesticidas
FROM yield y
LEFT JOIN pesticides p
    ON y.Area = p.Area
   AND y.Year = p.Year;


-- Cobertura de pesticides dentro do período em que a tabela
-- de pesticidas possui dados.

SELECT
    COUNT(*) AS total_yield,
    COUNT(p.Area) AS com_pesticidas,
    COUNT(*) - COUNT(p.Area) AS sem_pesticidas
FROM yield y
LEFT JOIN pesticides p
    ON y.Area = p.Area
   AND y.Year = p.Year
WHERE y.Year BETWEEN 1990 AND 2016;


-- Áreas presentes em yield que não possuem correspondência
-- em pesticides.

SELECT DISTINCT
    y.Area
FROM yield y
LEFT JOIN pesticides p
    ON y.Area = p.Area
WHERE p.Area IS NULL
ORDER BY y.Area;


-- Áreas de pesticides com cobertura inferior aos 27 anos
-- do período 1990–2016.

SELECT
    p.Area,
    MIN(p.Year) AS menor_ano,
    MAX(p.Year) AS maior_ano,
    COUNT(*) AS registros
FROM pesticides p
GROUP BY p.Area
HAVING COUNT(*) < 27
ORDER BY registros;


-- ============================================================
-- 10. RELACIONAMENTOS yield × rainfall
-- ============================================================

-- Cobertura geral de rainfall sobre yield.

SELECT
    COUNT(*) AS total_yield,
    COUNT(r.Area) AS com_rainfall,
    COUNT(*) - COUNT(r.Area) AS sem_rainfall
FROM yield y
LEFT JOIN rainfall r
    ON y.Area = r.Area
   AND y.Year = r.Year;


-- Separação entre registros anteriores e posteriores ao
-- início da cobertura de rainfall.

SELECT
    COUNT(*) AS total_yield,
    SUM(
        CASE
            WHEN Year < 1985 THEN 1
            ELSE 0
        END
    ) AS antes_rainfall,
    SUM(
        CASE
            WHEN Year BETWEEN 1985 AND 2016 THEN 1
            ELSE 0
        END
    ) AS dentro_periodo_rainfall
FROM yield;


-- Para os registros de 1985 em diante sem correspondência,
-- separa ausência da área e ausência específica do ano.

SELECT
    COUNT(*) AS registros_sem_correspondencia,
    SUM(
        CASE
            WHEN ra.Area IS NULL THEN 1
            ELSE 0
        END
    ) AS area_nao_existe,
    SUM(
        CASE
            WHEN ra.Area IS NOT NULL THEN 1
            ELSE 0
        END
    ) AS area_existe_mas_ano_sem_dado
FROM yield y
LEFT JOIN rainfall r
    ON y.Area = r.Area
   AND y.Year = r.Year
LEFT JOIN (
    SELECT DISTINCT Area
    FROM rainfall
) ra
    ON y.Area = ra.Area
WHERE y.Year >= 1985
  AND r.Area IS NULL;


-- Exemplo de diferenças de nomenclatura entre as tabelas.

SELECT *
FROM rainfall
WHERE Area LIKE '%China%'
ORDER BY Area, Year
LIMIT 20;


-- ============================================================
-- 11. RELACIONAMENTO yield × temp
-- ============================================================

-- NÃO utilizar o resultado de uma junção direta para medir
-- cobertura, pois temp possui múltiplas linhas por Country + Year.

-- Abaixo, a tabela derivada com pares únicos é utilizada para
-- avaliar corretamente a existência de correspondência.

SELECT
    COUNT(*) AS total_yield,
    COUNT(DISTINCT CONCAT(y.Area, '|', y.Year))
        AS areas_anos_yield,
    COUNT(DISTINCT CONCAT(t.country, '|', t.year))
        AS areas_anos_com_temp
FROM yield y
LEFT JOIN (
    SELECT DISTINCT
        country,
        year
    FROM temp
) t
    ON y.Area = t.country
   AND y.Year = t.year;


-- Registros de yield sem nenhuma correspondência de temperatura.

SELECT
    COUNT(*) AS registros_yield_sem_temp
FROM yield y
LEFT JOIN (
    SELECT DISTINCT
        country,
        year
    FROM temp
) t
    ON y.Area = t.country
   AND y.Year = t.year
WHERE t.country IS NULL;


-- Estatísticas da multiplicidade da tabela temp.

SELECT
    COUNT(*) AS combinacoes_area_ano,
    AVG(qtd_temperaturas) AS media_temperaturas,
    MIN(qtd_temperaturas) AS minimo_temperaturas,
    MAX(qtd_temperaturas) AS maximo_temperaturas
FROM (
    SELECT
        country,
        year,
        COUNT(*) AS qtd_temperaturas
    FROM temp
    GROUP BY country, year
) q;


-- ============================================================
-- 12. COBERTURA DO yield_df
-- ============================================================

-- Verifica quantas combinações de Area + Item + Year da tabela
-- yield estão presentes no yield_df.

SELECT
    COUNT(*) AS total_yield,
    COUNT(d.Area) AS presentes_no_yield_df,
    COUNT(*) - COUNT(d.Area) AS ausentes_no_yield_df
FROM yield y
LEFT JOIN (
    SELECT DISTINCT
        Area,
        Item,
        Year
    FROM yield_df
) d
    ON y.Area = d.Area
   AND y.Item = d.Item
   AND y.Year = d.Year;
