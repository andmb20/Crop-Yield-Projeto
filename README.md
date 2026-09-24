# Análise de Produtividade Agrícola

Projeto de análise de dados voltado à investigação da produtividade agrícola ao longo do tempo, considerando diferentes culturas, países e fatores ambientais e de produção.

## 🎯 Objetivo

Identificar padrões, diferenças e tendências na produtividade agrícola, investigando sua associação com fatores como:

* Temperatura média
* Precipitação
* Uso de pesticidas
* Cultura
* País
* Período

A análise terá caráter exploratório e não pretende estabelecer relações de causalidade entre as variáveis.

## 🔎 Perguntas de análise

1. Como a produtividade agrícola varia entre as diferentes culturas?
2. Quais países apresentam maiores e menores níveis de produtividade para as culturas analisadas?
3. Como a produtividade agrícola evolui ao longo do período analisado?
4. Existe associação aparente entre temperatura média e produtividade agrícola?
5. Existe associação aparente entre precipitação média e produtividade agrícola?
6. Como o uso de pesticidas se relaciona com os níveis de produtividade das culturas?
7. Quais padrões, anomalias ou inconsistências relevantes podem ser identificados nos dados?

## 📊 Dados

O projeto utiliza cinco arquivos principais:

* `pesticides.csv`
* `rainfall.csv`
* `temp.csv`
* `yield.csv`
* `yield_df.csv`

Após a etapa de preparação e tratamento, foi gerado o dataset integrado:

* `yield_integrado.csv`

A exploração detalhada da estrutura, granularidade, períodos, chaves e limitações dos dados está disponível em [`documentacao/01_entendimento.md`](documentacao/01_entendimento.md).

## 🛠️ Tecnologias

* Python
* Pandas
* SQL
* Power BI
* Git/GitHub

## 🔄 Etapas do projeto

* [x] **Etapa 1 — Entendimento do problema e exploração inicial**
* [x] **Etapa 2 — Exploração e validação dos dados com SQL**
* [x] **Etapa 3 — Preparação e tratamento dos dados com Pandas**
* [x] **Etapa 4 — Análise exploratória e construção dos indicadores**
* [x] **Etapa 5 — Dashboard no Power BI**
* [x] **Etapa 6 — Conclusões e documentação final**

## 📁 Estrutura do projeto

```text
Crop Yield Projeto/
│
├── dados/
│   ├── pesticides.csv
│   ├── rainfall.csv
│   ├── temp.csv
│   ├── yield_df.csv
│   ├── yield.csv
│   ├── yield_integrado.csv
│   │
│   └── indicadores/
│       ├── indicadores_associacao.csv 
│       ├── indicadores_pais.csv
│       ├── indicadores_temporais_anuais.csv 
│       ├── indicadores_temporais.csv 
│       └── ranking_paises.csv
│
├── documentacao/
│   ├── 01_entendimento.md
│   ├── 02_indicadores.md
│   └── 03_consideracoes_finais.md 
│
├── notebooks/
│   ├── 01_exploracao_inicial.ipynb
│   ├── 02_preparacao_tratamento.ipynb
│   ├── 03_analise_exploratoria.ipynb
│   └── 04_construcao_indicadores.ipynb 
│
├── sql/
│   └── 01_exploracao.sql
│
└── README.md
```

## 📌 Status

**Projeto concluído — Etapas 1 a 6 finalizadas.**

### Etapa 1 — Entendimento e exploração inicial

Foi realizado o entendimento do problema, dos arquivos disponíveis, das características gerais dos dados, da granularidade das tabelas, da cobertura temporal e das principais variáveis utilizadas na análise.

### Etapa 2 — Exploração e validação com SQL

Foi realizada a exploração e validação da estrutura dos dados utilizando SQL, incluindo análise de granularidade, chaves, cobertura temporal, relacionamentos entre tabelas e identificação de possíveis inconsistências e duplicidades.

### Etapa 3 — Preparação e tratamento com Pandas

Foram realizadas a conversão e padronização de tipos, tratamento da estrutura de precipitação, agregação das temperaturas para a granularidade anual, remoção de colunas técnicas, seleção e renomeação de variáveis analíticas, padronização das nomenclaturas geográficas, validação das chaves de integração e integração dos datasets auxiliares ao dataset principal.

Como resultado, foi gerado o dataset tratado `yield_integrado.csv`, utilizado como base para as análises posteriores.

### Etapa 4 — Análise exploratória e construção dos indicadores

A análise exploratória investigou a produtividade por cultura e país, sua evolução temporal e sua associação com temperatura, precipitação e uso de pesticidas.

Também foram analisados valores extremos, cobertura dos dados e possíveis limitações das variáveis utilizadas.

A partir dessas análises foram construídos indicadores consolidados para apoiar a interpretação dos resultados e a construção do dashboard.

Os principais indicadores foram organizados em:

* Indicadores temporais
* Indicadores temporais anuais
* Indicadores por país e cultura
* Indicadores de associação entre produtividade e fatores ambientais/de produção
* Ranking histórico por país e cultura

A documentação detalhada dos indicadores e suas limitações está disponível em [`documentacao/02_indicadores.md`](documentacao/02_indicadores.md).

### Etapa 5 — Dashboard no Power BI

Os dados tratados e os indicadores consolidados foram utilizados na construção de um dashboard analítico no Power BI.

O dashboard foi estruturado em quatro páginas:

* **Visão Geral** — principais indicadores, produtividade por cultura, evolução geral, associações e rankings de áreas.
* **Análise por Cultura** — comparação entre culturas, média e mediana, produtividade inicial e final e crescimento no período.
* **Evolução Temporal** — evolução geral e por cultura, crescimento entre 1961 e 2016 e comparação entre períodos.
* **Países e Fatores Ambientais** — comparação entre áreas e culturas e associações entre produtividade, temperatura, precipitação e uso de pesticidas.

Foram utilizados filtros e relacionamentos entre dimensões e tabelas analíticas para permitir a exploração dos dados no dashboard.

### Etapa 6 — Conclusões e documentação final

Foram consolidados os principais resultados encontrados durante a análise, incluindo:

* diferenças de produtividade entre culturas;
* diferenças entre áreas analisadas;
* evolução da produtividade ao longo do período;
* associações entre produtividade e temperatura;
* associações entre produtividade e precipitação;
* associações entre produtividade e uso de pesticidas;
* identificação de valores extremos e possíveis anomalias;
* limitações relacionadas à cobertura e estrutura dos dados.

As considerações finais estão documentadas em [`documentacao/03_consideracoes_finais.md`](documentacao/03_consideracoes_finais.md).

## 📈 Principais análises realizadas

O projeto produziu análises relacionadas a:

* Produtividade média e mediana por cultura
* Comparação de produtividade entre áreas
* Comparação de produtividade entre culturas e áreas
* Evolução anual da produtividade
* Comparação entre os anos inicial e final da série
* Crescimento da produtividade por cultura
* Cobertura de áreas ao longo do tempo
* Associação entre temperatura e produtividade
* Associação entre precipitação e produtividade
* Associação entre uso de pesticidas e produtividade
* Identificação e análise de valores extremos

As análises de associação são interpretadas como relações observadas nos dados e não como evidência de causalidade.

Além disso, a evolução temporal deve ser interpretada considerando que a quantidade de áreas disponíveis varia entre anos e culturas.

## 📊 Indicadores

Os indicadores consolidados foram exportados para arquivos CSV na pasta `dados/indicadores/`.

Foram construídos indicadores temporais, anuais, por área e cultura, de associação entre fatores e produtividade e rankings históricos.

A validação final confirmou a ausência de duplicidades e valores nulos nas tabelas de indicadores exportadas.

A metodologia, estrutura e limitações dos indicadores estão documentadas em [`documentacao/02_indicadores.md`](documentacao/02_indicadores.md).

## 📋 Considerações finais

A análise identificou diferenças expressivas de produtividade entre as culturas e entre as áreas analisadas, além de uma tendência geral de crescimento da produtividade no período de 1961 a 2016.

A produtividade mediana agregada passou de aproximadamente **26.400 hg/ha em 1961 para 46.947 hg/ha em 2016**, representando um crescimento de aproximadamente **77,8%**.

As análises de temperatura, precipitação e uso de pesticidas identificaram diferentes níveis de associação com a produtividade. Entretanto, essas associações não devem ser interpretadas como relações causais.

Também foram identificados valores extremos e limitações relacionadas à cobertura das variáveis auxiliares e à disponibilidade desigual de áreas ao longo do período.

A análise completa das conclusões, anomalias e limitações está disponível em [`documentacao/03_consideracoes_finais.md`](documentacao/03_consideracoes_finais.md).

## 🚀 Projeto concluído

O projeto foi desenvolvido desde a exploração inicial dos dados até a construção dos indicadores, dashboard e documentação final, utilizando **Python/Pandas, SQL, Power BI e Git/GitHub**.

O resultado final reúne um fluxo completo de análise de dados, desde a compreensão e preparação dos dados até a comunicação dos resultados por meio de visualizações interativas.

## 📊 Dashboard

### Visão Geral

![Visão Geral](/imagens/dashboard_01_visao_geral.png)

### Análise por Cultura

![Análise por Cultura](/imagens/dashboard_02_analise_cultura.png)

### Evolução Temporal

![Evolução Temporal](/imagens/dashboard_03_evolucao_temporal.png)

### Áreas e Fatores

![Áreas e Fatores](/imagens/dashboard_04_areas_fatores.png)

### Exibição de Modelo

![Exibição de Modelo](/imagens/modelo_dados.png)