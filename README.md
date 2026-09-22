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
│   └── 02_indicadores.md 
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

**Em desenvolvimento — Etapas 1, 2, 3 e 4 concluídas.**

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

## 📈 Principais análises realizadas

A Etapa 4 produziu análises relacionadas a:

* Produtividade média e mediana por cultura
* Comparação de produtividade entre países
* Evolução anual da produtividade
* Comparação entre os anos inicial e final da série
* Cobertura de países ao longo do tempo
* Associação entre temperatura e produtividade
* Associação entre precipitação e produtividade
* Associação entre uso de pesticidas e produtividade
* Identificação e análise de valores extremos

As análises de associação são interpretadas como relações observadas nos dados e não como evidência de causalidade.

Além disso, a evolução temporal deve ser interpretada considerando que a quantidade de países disponíveis varia entre anos e culturas.

## 📊 Indicadores para o Power BI

Os indicadores consolidados foram exportados para arquivos CSV na pasta `dados/indicadores/`.

Esses arquivos servirão como apoio à construção do dashboard na próxima etapa do projeto.

A validação final confirmou a ausência de duplicidades e valores nulos nas tabelas de indicadores exportadas.

## 🚀 Próximos passos

### Etapa 5 — Dashboard no Power BI

* Importação e organização dos dados
* Construção do modelo analítico
* Criação das medidas e indicadores
* Desenvolvimento das páginas do dashboard
* Construção das visualizações de produtividade
* Análise temporal
* Comparação entre culturas e países
* Visualização das associações com fatores ambientais e de produção
* Aplicação de filtros e interações
* Validação dos resultados apresentados

### Etapa 6 — Conclusões e documentação final

* Consolidação dos principais resultados
* Registro das limitações da análise
* Documentação das conclusões
* Finalização do README
* Organização final do projeto e portfólio