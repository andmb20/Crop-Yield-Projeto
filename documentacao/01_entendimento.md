# Entendimento do Problema

## 1. Contexto do projeto

A análise busca compreender a variação da produtividade agrícola entre diferentes países, culturas e períodos, explorando a associação entre produtividade e fatores ambientais e de produção, como temperatura média, precipitação e uso de pesticidas.

## 2. Objetivo

Identificar padrões, diferenças e tendências na produtividade agrícola ao longo do tempo, investigando como fatores ambientais e de produção, com destaque para o uso de pesticidas, estão associados aos níveis de rendimento das culturas.

A análise terá caráter exploratório e não pretende estabelecer relações de causalidade entre as variáveis.

---

## 3. Perguntas de análise

1. Como a produtividade agrícola varia entre as diferentes culturas?

2. Quais países apresentam maiores e menores níveis de produtividade para as culturas analisadas?

3. Como a produtividade agrícola evolui ao longo do período analisado e quais mudanças podem ser observadas nos fatores de produção e ambientais ao longo do tempo?

4. Existe associação aparente entre temperatura média e produtividade agrícola?

5. Existe associação aparente entre precipitação média e produtividade agrícola?

6. Como o uso de pesticidas se relaciona com os níveis de produtividade das culturas?

7. Quais padrões, anomalias ou inconsistências relevantes podem ser identificados nos dados?

---

## 4. Arquivos disponíveis

O projeto possui cinco arquivos principais:

| Arquivo | Descrição inicial |
|---|---|
| `pesticides.csv` | Dados de uso de pesticidas por área e ano |
| `rainfall.csv` | Dados de precipitação média anual por área e ano |
| `temp.csv` | Dados de temperatura média por país e ano |
| `yield.csv` | Dados de produtividade agrícola por área, cultura e ano |
| `yield_df.csv` | Dataset enriquecido contendo produtividade e variáveis ambientais e de produção |

Os arquivos serão analisados individualmente antes da etapa de tratamento e integração dos dados.

---

## 5. Conhecimento inicial dos datasets

### 5.1 `pesticides.csv`

- **Linhas:** 4.349
- **Colunas:** 7
- **Áreas:** 168
- **Período:** 1990–2016
- **Culturas/itens:** 1
- **Unidade:** toneladas de ingredientes ativos
- **Valores nulos:** não identificados
- **Colunas principais:** `Area`, `Year`, `Item`, `Value`

A combinação `Area + Year` não está presente para todas as possibilidades do período.

---

### 5.2 `rainfall.csv`

- **Linhas:** 6.727
- **Colunas:** 3
- **Áreas:** 217
- **Período:** 1985–2018, com ausência de 1988 e 2003
- **Valores nulos:** 774 em `average_rain_fall_mm_per_year`
- **Marcador de ausência de informação:** `..`
- A coluna `Area` possui inicialmente um espaço no nome (`' Area'`).

O dataset apresenta uma estrutura completa de combinações entre área e ano dentro do período disponível, porém existem valores ausentes.

---

### 5.3 `temp.csv`

- **Linhas:** 71.311
- **Colunas:** 3
- **Países:** 137
- **Período:** 1743–2013
- **Valores nulos em `avg_temp`:** 2.547
- **Colunas:** `year`, `country`, `avg_temp`

A combinação `country + year` não é uma chave única.

Foram identificadas múltiplas observações para determinados países e anos, com quantidade de registros variando entre os grupos.

Por esse motivo, o dataset não deve ser simplesmente deduplicado. Será necessário definir uma estratégia de agregação adequada antes de utilizá-lo em análises que dependam de uma observação anual por país.

---

### 5.4 `yield.csv`

- **Linhas:** 56.717
- **Colunas:** 12
- **Áreas:** 212
- **Culturas:** 10
- **Período:** 1961–2016
- **Elemento:** Yield
- **Unidade:** `hg/ha`

As principais variáveis analíticas incluem área, cultura, ano e valor de produtividade.

Esse arquivo apresenta uma cobertura temporal maior que `yield_df.csv`.

---

### 5.5 `yield_df.csv`

- **Linhas:** 28.242
- **Colunas:** 8
- **Áreas:** 101
- **Culturas:** 10
- **Período:** 1990–2013, com ausência de 2003
- **Valores nulos:** não identificados
- **Variáveis principais:**
  - `Area`
  - `Item`
  - `Year`
  - `hg/ha_yield`
  - `average_rain_fall_mm_per_year`
  - `pesticides_tonnes`
  - `avg_temp`

Culturas presentes:

- Maize
- Potatoes
- Rice, paddy
- Sorghum
- Soybeans
- Wheat
- Cassava
- Sweet potatoes
- Plantains and others
- Yams

---

## 6. Granularidade e possíveis chaves

Durante a exploração foi identificado que os datasets possuem granularidades diferentes.

### `pesticides.csv`

A combinação esperada para análise é:

`Area + Year`

Porém, nem todas as combinações possíveis estão presentes.

### `rainfall.csv`

A estrutura apresenta uma observação por:

`Area + Year`

porém existem valores ausentes e marcadores de ausência de informação.

### `temp.csv`

A combinação:

`country + year`

**não é única**.

Existem múltiplas observações para determinadas combinações de país e ano.

### `yield.csv`

A produtividade é registrada por:

`Area + Item + Year`

sendo necessário validar a unicidade dessa combinação durante a preparação dos dados.

### `yield_df.csv`

A combinação:

`Area + Item + Year`

também não é única.

A investigação mostrou que as duplicidades estão associadas às diferentes observações de `avg_temp`.

---

## 7. Principais inconsistências identificadas

### 7.1 Múltiplas temperaturas para o mesmo país e ano

O arquivo `temp.csv` apresenta múltiplos registros para determinadas combinações de país e ano.

Exemplo:

| year | country   | avg_temp |
| ---- | --------- | -------: |
| 1990 | Argentina |    17.46 |
| 1990 | Argentina |    17.67 |

Isso gera múltiplas linhas quando os dados de temperatura são associados aos dados agrícolas.

A solução será definida na etapa de preparação dos dados, preservando o arquivo original e criando uma representação adequada para análise anual.

---

### 7.2 Duplicidades em `yield_df.csv`

Foram identificadas múltiplas linhas para a mesma combinação:

`Area + Item + Year`

As linhas diferem principalmente pela variável `avg_temp`.

Isso indica que a granularidade atual do arquivo enriquecido precisa ser analisada antes de realizar agregações ou construir indicadores.

---

### 7.3 Coluna `Unnamed: 0`

O arquivo `yield_df.csv` possui uma coluna denominada `Unnamed: 0`.

Essa coluna funciona como um identificador técnico/index do arquivo e não representa uma variável de negócio relevante para a análise.

Sua utilização será avaliada durante a etapa de tratamento.

---

### 7.4 Valores ausentes e marcadores de ausência

O arquivo `rainfall.csv` possui valores nulos e registros representados por `..`.

Esses valores precisam ser tratados antes de análises estatísticas, cálculos ou visualizações.

---

## 8. Limitações e cuidados

Durante a exploração inicial foram identificados os seguintes pontos de atenção:

* Os arquivos possuem períodos e coberturas diferentes.
* Nem todos os países, culturas e anos estão igualmente representados.
* `temp.csv` possui múltiplas observações para determinadas combinações de país e ano.
* `rainfall.csv` contém valores ausentes e o marcador `..`.
* `yield_df.csv` apresenta múltiplas linhas para determinadas combinações de área, cultura e ano.
* A coluna `Unnamed: 0` é um identificador técnico e não uma variável analítica.
* A análise possui caráter observacional e exploratório.
* Associações encontradas entre produtividade e fatores ambientais ou de produção não serão interpretadas como relações de causalidade.

---

## 9. Próxima etapa

Após o entendimento inicial dos dados, a próxima etapa será a **preparação e tratamento dos dados**, incluindo:

* Padronização dos nomes das colunas.
* Correção dos tipos de dados.
* Tratamento de valores ausentes.
* Tratamento de marcadores como `..`.
* Avaliação e tratamento das duplicidades.
* Definição das chaves analíticas.
* Agregação adequada das temperaturas.
* Validação da consistência dos dados.
* Preparação dos dados para análise em SQL, Pandas e Power BI.
