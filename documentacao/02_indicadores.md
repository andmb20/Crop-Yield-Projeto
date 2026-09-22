# Indicadores e Insights

## 1. Objetivo

Esta etapa tem como objetivo transformar os dados tratados na etapa anterior em indicadores capazes de responder às principais perguntas definidas no projeto.

Foram analisadas diferenças de produtividade entre culturas e países, evolução temporal da produtividade e possíveis associações entre produtividade e fatores ambientais e de produção, como temperatura média, precipitação e uso de pesticidas.

As análises possuem caráter **exploratório e descritivo**. As correlações identificadas representam associações lineares entre as variáveis e não devem ser interpretadas como relações de causa e efeito.

---

## 2. Indicadores Gerais

A base integrada possui **56.717 registros**, distribuídos entre **212 países/áreas** e **10 culturas**, abrangendo o período de **1961 a 2016**.

| Indicador             |     Valor |
| --------------------- | --------: |
| Registros             |    56.717 |
| Países/áreas          |       212 |
| Culturas              |        10 |
| Ano inicial           |      1961 |
| Ano final             |      2016 |
| Produtividade mediana |    36.744 |
| Produtividade média   | 62.094,66 |
| Produtividade mínima  |         0 |
| Produtividade máxima  | 1.000.000 |

A diferença entre média e mediana é relevante devido à presença de valores extremos na distribuição da produtividade. Por esse motivo, a **mediana** foi utilizada como principal medida de comparação em diversas análises.

---

## 3. Indicadores por Cultura

A produtividade foi agregada por cultura utilizando média, mediana, mínimo e máximo.

| Cultura              | Registros | Países |   Mediana |      Média | Mínimo |    Máximo |
| -------------------- | --------: | -----: | --------: | ---------: | -----: | --------: |
| Potatoes             |     7.876 |    168 | 130.427,5 | 150.083,24 |  8.052 |   540.003 |
| Cassava              |     5.718 |    106 |  85.612,5 |  92.768,76 | 10.000 |   385.818 |
| Yams                 |     3.150 |     63 |  74.534,0 |  80.903,50 |  1.367 |   333.333 |
| Sweet potatoes       |     6.356 |    122 |  71.429,0 |  89.885,12 |  2.000 |   400.000 |
| Plantains and others |     2.654 |     53 |  71.226,5 |  86.282,77 |    286 | 1.000.000 |
| Rice, paddy          |     6.469 |    128 |  26.271,0 |  30.239,23 |  2.034 |   106.827 |
| Wheat                |     6.160 |    133 |  19.999,0 |  24.607,42 |      0 |   106.677 |
| Maize                |     8.631 |    180 |  17.393,0 |  29.360,01 |    343 |   404.127 |
| Soybeans             |     4.192 |    108 |  12.993,0 |  14.162,73 |     50 |    59.470 |
| Sorghum              |     5.511 |    121 |  11.411,0 |  17.091,16 |      0 |   255.800 |

### Principais observações

* **Potatoes** apresentou a maior produtividade mediana entre as culturas analisadas, com 130.427,5.
* **Sorghum** apresentou a menor produtividade mediana, com 11.411.
* **Cassava**, **Yams**, **Sweet potatoes** e **Plantains and others** também apresentaram medianas superiores a 70 mil.
* **Maize** possui a maior quantidade de registros, com 8.631, e também a maior cobertura de países.
* A diferença entre média e mediana em algumas culturas evidencia a influência de valores extremos.

---

## 4. Indicadores Temporais

A evolução temporal foi analisada em dois níveis:

1. comparação entre os anos inicial e final do período;
2. acompanhamento da produtividade mediana ano a ano.

### 4.1 Comparação entre 1961 e 2016

Para cada cultura, foi calculada a produtividade mediana dos países disponíveis em 1961 e em 2016.

| Cultura              | Mediana 1961 | Mediana 2016 | Variação absoluta | Crescimento |
| -------------------- | -----------: | -----------: | ----------------: | ----------: |
| Maize                |       10.938 |       36.745 |            25.807 |     235,94% |
| Wheat                |       10.692 |       30.475 |            19.783 |     185,03% |
| Soybeans             |        6.982 |       15.901 |             8.919 |     127,74% |
| Potatoes             |     86.158,5 |      185.509 |          99.350,5 |     115,31% |
| Rice, paddy          |       17.483 |     36.831,5 |          19.348,5 |     110,67% |
| Plantains and others |       60.000 |      101.250 |            41.250 |      68,75% |
| Sorghum              |        9.168 |       15.146 |             5.978 |      65,21% |
| Sweet potatoes       |     66.496,5 |       91.446 |          24.949,5 |      37,52% |
| Cassava              |       75.707 |    100.133,5 |          24.426,5 |      32,26% |
| Yams                 |       75.431 |       81.097 |             5.666 |       7,51% |

### Principais observações

Todas as culturas apresentaram aumento da produtividade mediana entre 1961 e 2016.

Os maiores crescimentos percentuais observados foram:

* **Maize:** 235,94%;
* **Wheat:** 185,03%;
* **Soybeans:** 127,74%.

**Yams** apresentou a menor variação percentual, com crescimento de 7,51%.

Esses resultados descrevem a diferença entre os valores observados em 1961 e 2016. Eles não representam necessariamente a evolução de um mesmo conjunto fixo de países.

### 4.2 Evolução anual

Além da comparação entre os extremos do período, foi construída uma série temporal anual agrupada por **ano e cultura**.

A tabela `indicadores_temporais_anuais` possui **560 combinações**, correspondentes às 10 culturas analisadas ao longo dos 56 anos do período de 1961 a 2016.

Para cada combinação `Year × Item`, foram calculados:

* quantidade de registros;
* quantidade de países;
* produtividade mediana;
* produtividade média;
* produtividade mínima;
* produtividade máxima.

Essa estrutura permite analisar a evolução da produtividade ao longo do tempo de forma contínua e será utilizada na construção das visualizações temporais no Power BI.

A quantidade de países representados também é registrada para cada ano e cultura, permitindo contextualizar alterações na cobertura da base.

### Cobertura temporal

A quantidade de países representados varia ao longo dos anos e entre culturas.

Algumas culturas apresentam cobertura relativamente estável, enquanto outras apresentam expansão significativa, principalmente a partir da década de 1990.

Portanto, as medianas anuais representam a produtividade dos países disponíveis em cada ano e não necessariamente a evolução de um painel fixo de países.

---

## 5. Indicadores por País

Para reduzir distorções causadas por séries muito curtas, foram considerados apenas países com **pelo menos 20 observações para determinada cultura**.

A produtividade foi comparada utilizando a mediana histórica de cada combinação entre país e cultura.

### Países com maiores medianas

| Cultura              | 1º                   | 2º                             | 3º             |
| -------------------- | -------------------- | ------------------------------ | -------------- |
| Cassava              | Barbados             | Cook Islands                   | India          |
| Maize                | United Arab Emirates | Kuwait                         | Qatar          |
| Plantains and others | Belize               | Suriname                       | Martinique     |
| Potatoes             | Netherlands          | Belgium-Luxembourg             | Switzerland    |
| Rice, paddy          | Australia            | Greece                         | Puerto Rico    |
| Sorghum              | Jordan               | Italy                          | Israel         |
| Soybeans             | Italy                | Egypt                          | Guatemala      |
| Sweet potatoes       | Israel               | Occupied Palestinian Territory | Cook Islands   |
| Wheat                | Netherlands          | Ireland                        | United Kingdom |
| Yams                 | Japan                | Papua New Guinea               | Jamaica        |

### Países com menores medianas

| Cultura              | 1º                       | 2º                              | 3º                |
| -------------------- | ------------------------ | ------------------------------- | ----------------- |
| Cassava              | Sudan (former)           | Martinique                      | Equatorial Guinea |
| Maize                | Botswana                 | Cabo Verde                      | Vanuatu           |
| Plantains and others | Micronesia               | Pacific Islands Trust Territory | New Caledonia     |
| Potatoes             | Central African Republic | Eswatini                        | Burkina Faso      |
| Rice, paddy          | DR Congo                 | Congo                           | Mozambique        |
| Sorghum              | Namibia                  | Eritrea                         | Botswana          |
| Soybeans             | Tajikistan               | Nigeria                         | Liberia           |
| Sweet potatoes       | Maldives                 | Mauritania                      | Ghana             |
| Wheat                | Somalia                  | Venezuela, RB                   | Honduras          |
| Yams                 | Niue                     | Fiji                            | Grenada           |

Os rankings representam **medianas históricas dentro do período analisado**, considerando somente países com pelo menos 20 observações para cada cultura.

Portanto, não devem ser interpretados como rankings atuais de produtividade agrícola.

---

## 6. Indicadores de Associação

Foram calculadas correlações de Pearson entre produtividade e três variáveis disponíveis na base integrada:

* Temperatura média;
* Precipitação;
* Uso de pesticidas.

A análise possui caráter exploratório e busca identificar possíveis associações lineares.

### 6.1 Temperatura média

| Cultura              | Correlação |
| -------------------- | ---------: |
| Cassava              |      0,024 |
| Plantains and others |     -0,179 |
| Yams                 |     -0,279 |
| Soybeans             |     -0,343 |
| Sorghum              |     -0,386 |
| Sweet potatoes       |     -0,391 |
| Rice, paddy          |     -0,391 |
| Wheat                |     -0,403 |
| Potatoes             |     -0,427 |
| Maize                |     -0,429 |

Na análise agregada, a maioria das culturas apresentou correlação negativa entre temperatura média e produtividade.

Entretanto, uma análise adicional realizada dentro dos grupos país-cultura, considerando grupos com pelo menos 10 observações, apresentou correlações médias e medianas positivas para todas as culturas.

Esse contraste indica que diferenças estruturais entre países podem influenciar fortemente a associação observada nos dados agregados.

Assim, as correlações não devem ser interpretadas como evidência de causalidade.

### 6.2 Precipitação

| Cultura              | Correlação |
| -------------------- | ---------: |
| Sweet potatoes       |     -0,274 |
| Maize                |     -0,243 |
| Rice, paddy          |     -0,177 |
| Soybeans             |     -0,150 |
| Potatoes             |     -0,148 |
| Sorghum              |     -0,062 |
| Wheat                |     -0,027 |
| Yams                 |      0,056 |
| Plantains and others |      0,072 |
| Cassava              |      0,092 |

As associações entre precipitação e produtividade foram predominantemente fracas, variando de -0,274 a 0,092.

Também foi identificada uma limitação importante na variável de precipitação: apesar da existência de vários anos para determinados países, os valores apresentam pouca variação ao longo do tempo.

Em grande parte dos grupos país-cultura, o valor de precipitação permanece constante entre os anos disponíveis.

Dessa forma, essa variável representa principalmente uma característica climática dos locais analisados, e não uma série temporal anual de precipitação.

### 6.3 Uso de pesticidas

| Cultura              | Correlação |
| -------------------- | ---------: |
| Plantains and others |      0,061 |
| Wheat                |      0,073 |
| Potatoes             |      0,077 |
| Maize                |      0,087 |
| Cassava              |      0,124 |
| Soybeans             |      0,128 |
| Sorghum              |      0,150 |
| Yams                 |      0,150 |
| Sweet potatoes       |      0,208 |
| Rice, paddy          |      0,244 |

O uso de pesticidas apresentou associação linear positiva em todas as culturas analisadas.

As correlações variaram de 0,061 a 0,244, indicando associações predominantemente fracas.

Esse resultado não permite afirmar que maior uso de pesticidas cause maior produtividade. Outras características agrícolas, ambientais, tecnológicas e socioeconômicas podem influenciar simultaneamente as duas variáveis.

---

## 7. Indicadores de Qualidade e Anomalias

Foram realizadas verificações adicionais para identificar valores extremos, valores nulos e possíveis inconsistências na variável de produtividade.

| Indicador                      | Quantidade |
| ------------------------------ | ---------: |
| Registros                      |     56.717 |
| Valores iguais a zero          |          8 |
| Valores abaixo de 1.000        |         40 |
| Valores acima de 500.000       |          8 |
| Valores nulos de produtividade |          0 |
| Países/áreas                   |        212 |
| Culturas                       |         10 |

Foram identificados **8 registros com produtividade igual a zero** e **8 registros acima de 500.000**.

O maior valor observado foi:

* **Quênia**
* **Plantains and others**
* **1964**
* **Produtividade: 1.000.000**

Os valores extremos estão concentrados principalmente em determinadas combinações de cultura e país, indicando que parte desses valores pode representar padrões específicos da própria base, e não necessariamente erros aleatórios.

Também foi realizada uma análise utilizando o método do **Intervalo Interquartil (IQR)** para identificar possíveis outliers estatísticos.

Os maiores volumes de registros classificados como outliers pelo critério IQR ocorreram em:

* Maize: 660 registros;
* Sweet potatoes: 295;
* Sorghum: 290;
* Potatoes: 280.

A classificação como outlier estatístico não significa necessariamente que o registro seja inválido.

Como não foram identificadas inconsistências estruturais que justificassem a remoção dos valores extremos, esses registros foram mantidos para preservar a integridade da base.

---

## 8. Principais Insights

### 8.1 Diferença entre culturas

Existe uma diferença significativa entre as produtividades medianas das culturas analisadas.

**Potatoes** apresentou a maior produtividade mediana, enquanto **Sorghum** apresentou a menor.

A mediana foi priorizada nas comparações devido à presença de valores extremos que influenciam a média.

### 8.2 Diferenças entre países

A produtividade varia consideravelmente entre países dentro de uma mesma cultura.

Essas diferenças reforçam a importância de analisar simultaneamente cultura e país, evitando conclusões baseadas apenas em médias globais.

### 8.3 Evolução temporal

Todas as culturas apresentaram aumento da produtividade mediana entre 1961 e 2016.

O maior crescimento percentual observado na comparação entre os anos inicial e final ocorreu em **Maize**, seguido por **Wheat** e **Soybeans**.

Entretanto, a variação da cobertura de países ao longo do tempo deve ser considerada na interpretação dessas tendências.

A série temporal anual permite observar essas mudanças de forma mais detalhada do que a comparação isolada entre 1961 e 2016.

### 8.4 Temperatura

A temperatura apresentou correlações negativas na análise agregada para a maioria das culturas.

Por outro lado, as correlações calculadas individualmente dentro dos países apresentaram comportamento diferente.

Esse contraste demonstra que o nível de agregação pode alterar significativamente a associação observada entre as variáveis.

### 8.5 Precipitação

A precipitação apresentou associações lineares predominantemente fracas com a produtividade.

Além disso, a baixa variação temporal da variável limita sua utilização para investigar mudanças anuais de produtividade.

### 8.6 Pesticidas

O uso de pesticidas apresentou associações positivas, porém fracas, com todas as culturas.

Essas associações não permitem estabelecer relações de causa e efeito.

### 8.7 Qualidade dos dados

A base apresenta produtividade preenchida em todos os 56.717 registros.

Foram identificados poucos valores extremos em relação ao volume total da base, além de oito registros com valor igual a zero.

Os registros foram preservados para evitar alterações arbitrárias na distribuição original dos dados.

---

## 9. Limitações da Análise

As principais limitações identificadas durante a análise foram:

### Cobertura temporal desigual

A quantidade de países disponíveis varia entre os anos e entre as culturas.

Consequentemente, a comparação entre 1961 e 2016 não representa necessariamente a evolução de um mesmo conjunto de países.

### Variáveis ambientais

A precipitação possui pouca variação temporal para grande parte dos países.

A temperatura também deve ser interpretada considerando diferenças estruturais entre localidades.

### Dados ausentes

As variáveis auxiliares não possuem cobertura completa na base integrada:

* Precipitação: aproximadamente 48,74% dos registros possuem valor disponível;
* Pesticidas: aproximadamente 42,27%;
* Temperatura: aproximadamente 56,79%.

A produtividade, por outro lado, não possui valores nulos.

### Associação não implica causalidade

As correlações apresentadas neste projeto são exploratórias.

Não foram utilizados modelos causais ou experimentais capazes de determinar se temperatura, precipitação ou pesticidas provocam mudanças na produtividade.

### Valores extremos

A base possui valores classificados como outliers pelos critérios estatísticos utilizados.

Esses valores foram mantidos porque não foram identificadas evidências suficientes para classificá-los como erros de registro.

### Comparações históricas

Os indicadores representam o período de 1961 a 2016 e refletem os dados disponíveis na fonte utilizada.

Portanto, os rankings e valores apresentados não devem ser interpretados como retratos atuais da produtividade agrícola dos países.

---

## 10. Estrutura dos Indicadores Exportados

Após a construção e validação dos indicadores, foram gerados arquivos CSV para apoiar a etapa de visualização no Power BI.

Os arquivos foram armazenados em:

```text
dados/
└── indicadores/
    ├── indicadores_temporais.csv
    ├── indicadores_temporais_anuais.csv
    ├── indicadores_pais.csv
    ├── indicadores_associacao.csv
    └── ranking_paises.csv
```

### Indicadores temporais

`indicadores_temporais.csv`

* 10 registros;
* uma linha por cultura;
* comparação entre 1961 e 2016;
* variação absoluta;
* crescimento percentual.

### Indicadores temporais anuais

`indicadores_temporais_anuais.csv`

* 560 registros;
* uma combinação por `Year × Item`;
* produtividade mediana, média, mínima e máxima;
* quantidade de registros;
* quantidade de países.

Esse arquivo será utilizado principalmente para construir as visualizações de evolução temporal no Power BI.

### Indicadores por país

`indicadores_pais.csv`

* 1.122 combinações de país e cultura;
* somente grupos com pelo menos 20 observações;
* estatísticas históricas de produtividade.

### Indicadores de associação

`indicadores_associacao.csv`

* 10 registros, um por cultura;
* correlações entre produtividade e temperatura, precipitação e pesticidas.

### Ranking de países

`ranking_paises.csv`

* 60 registros;
* Top 3 e Bottom 3 de cada cultura;
* baseado na mediana histórica;
* considerando apenas grupos com pelo menos 20 observações.

### Validação dos arquivos

Todos os arquivos exportados foram validados após a geração.

Não foram identificadas duplicidades nas chaves analíticas utilizadas e não foram encontrados valores nulos nas tabelas exportadas.

| Arquivo                            | Registros | Colunas | Duplicidades | Nulos |
| ---------------------------------- | --------: | ------: | -----------: | ----: |
| `indicadores_temporais.csv`        |        10 |       5 |            0 |     0 |
| `indicadores_temporais_anuais.csv` |       560 |       8 |            0 |     0 |
| `indicadores_pais.csv`             |     1.122 |       7 |            0 |     0 |
| `indicadores_associacao.csv`       |        10 |       4 |            0 |     0 |
| `ranking_paises.csv`               |        60 |       8 |            0 |     0 |

---

## Conclusão

A construção dos indicadores permitiu transformar a base integrada em uma estrutura analítica capaz de responder às principais questões definidas no projeto.

Os resultados mostram diferenças relevantes entre culturas e países, crescimento da produtividade mediana ao longo do período analisado e associações distintas entre produtividade e fatores ambientais e de produção.

A inclusão da série temporal anual permite analisar a evolução das culturas de forma mais detalhada, enquanto os indicadores por país permitem observar diferenças históricas entre localidades.

As análises de temperatura, precipitação e pesticidas demonstram a importância de considerar as limitações dos dados e evitar interpretações causais a partir de correlações simples.

Os indicadores foram validados e exportados em arquivos separados, mantendo também a base integrada como fonte principal dos dados.

Esses resultados servirão como base para a próxima etapa do projeto, na qual os indicadores serão transformados em visualizações e análises interativas no **Power BI**.
