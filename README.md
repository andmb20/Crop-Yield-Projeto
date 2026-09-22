# Análise de Produtividade Agrícola

> 🚧 **Projeto em desenvolvimento**

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
3. Como a produtividade agrícola evolui ao longo do período analisado e quais mudanças podem ser observadas nos fatores de produção e ambientais ao longo do tempo?
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
* [ ] **Etapa 4 — Análise exploratória e construção dos indicadores**
* [ ] **Etapa 5 — Dashboard no Power BI**
* [ ] **Etapa 6 — Conclusões e documentação final**

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
│   └── yield_integrado.csv
│
├── documentacao/
│   └── 01_entendimento.md
│
├── notebooks/
│   ├── 01_exploracao_inicial.ipynb
│   └── 02_preparacao_tratamento.ipynb
│
├── sql/
│   └── 01_exploracao.sql
│
└── README.md
```

## 📌 Status

**Em desenvolvimento — Etapas 1, 2 e 3 concluídas.**

A Etapa 1 concentrou-se no entendimento do problema, dos arquivos e das características gerais dos dados.

A Etapa 2 foi dedicada à exploração e validação da estrutura dos dados utilizando SQL, incluindo análise de granularidade, chaves, cobertura temporal, relacionamentos entre tabelas e identificação de possíveis inconsistências e duplicidades.

A Etapa 3 foi dedicada à preparação e tratamento dos dados com Pandas. Foram realizadas a conversão e padronização de tipos, tratamento da estrutura de rainfall, agregação das temperaturas para a granularidade anual, remoção de colunas técnicas, seleção e renomeação de variáveis analíticas, padronização das nomenclaturas geográficas, validação das chaves de integração e integração dos datasets auxiliares ao dataset principal.

Como resultado, foi gerado o dataset tratado yield_integrado.csv, que será utilizado como base para as análises posteriores.

---

## 🚀 Próximos passos

**Etapa 4 — Análise exploratória e construção dos indicadores**

* Exploração das distribuições das variáveis
* Análise da produtividade por cultura
* Análise da produtividade por país
* Evolução temporal da produtividade
* Análise de temperatura, precipitação e uso de pesticidas
* Identificação de padrões e possíveis anomalias
* Construção dos indicadores que serão utilizados no Power BI
