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

A exploração detalhada da estrutura, granularidade, períodos, chaves e limitações dos dados está disponível em [`documentacao/01_entendimento.md`](documentacao/01_entendimento.md).

## 🛠️ Tecnologias

* Python
* Pandas
* SQL
* Power BI
* Git/GitHub

## 🔄 Etapas do projeto

* [x] **Etapa 1 — Entendimento do problema**
* [ ] **Etapa 2 — Preparação e tratamento dos dados**
* [ ] **Etapa 3 — Análise exploratória**
* [ ] **Etapa 4 — Construção dos indicadores e análise**
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
│   └── yield.csv
│
├── documentacao/
│   └── 01_entendimento.md
│
├── notebooks/
│   └── 01_exploracao_inicial.ipynb
│
└── README.md
```

## 📌 Status

**Em desenvolvimento — Etapa 1 concluída.**

Os resultados e conclusões serão adicionados ao README conforme as etapas de tratamento, análise e visualização forem concluídas.
