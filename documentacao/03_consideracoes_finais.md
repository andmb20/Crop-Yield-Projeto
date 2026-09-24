# Considerações Finais

## 1. Variação entre culturas

A análise identificou diferenças expressivas nos níveis de produtividade entre as culturas avaliadas. A **batata** apresentou a maior produtividade mediana, com aproximadamente **130.427,5 hg/ha**, enquanto o **sorgo** apresentou a menor, com aproximadamente **11.411 hg/ha**.

Também foram observados níveis elevados de produtividade para mandioca, inhame, batata-doce e banana-da-terra, enquanto soja, milho, trigo e arroz apresentaram valores medianos inferiores aos das culturas de maior produtividade.

Essa diferença demonstra que a produtividade varia consideravelmente entre as culturas presentes no conjunto de dados. Entretanto, os valores não devem ser utilizados para afirmar que uma cultura é necessariamente mais eficiente que outra, pois diferentes culturas possuem características biológicas, produtivas e condições de cultivo distintas.

A comparação entre média e mediana também mostrou que algumas culturas apresentam diferenças relevantes entre essas duas medidas, indicando influência de valores extremos na distribuição da produtividade.

---

## 2. Diferenças entre áreas

A análise por área revelou diferenças importantes nos níveis de produtividade mediana observados entre os locais analisados.

Os rankings de maiores e menores produtividades evidenciam que determinadas áreas apresentam valores medianos significativamente superiores ou inferiores aos observados em outras localidades. Também foi possível observar que algumas áreas se destacam em culturas específicas, enquanto outras apresentam registros concentrados em um conjunto menor de culturas.

Essa distribuição reforça que a produtividade agrícola não é homogênea entre as áreas analisadas.

Entretanto, as diferenças observadas não permitem atribuir diretamente a produtividade a um único fator. Características climáticas, condições locais, práticas agrícolas, tecnologia, infraestrutura, características das culturas e diferenças na disponibilidade dos dados podem contribuir para essas diferenças.

---

## 3. Evolução temporal da produtividade

A análise temporal mostrou uma evolução positiva da produtividade mediana agregada entre **1961 e 2016**.

A produtividade mediana passou de aproximadamente **26.400 hg/ha em 1961** para **46.947 hg/ha em 2016**, representando um crescimento de aproximadamente **77,8%** no período analisado.

A evolução também ocorreu de maneira diferente entre as culturas. Entre 1961 e 2016, os maiores crescimentos percentuais observados foram:

* **Milho:** aproximadamente 235,9%;
* **Trigo:** aproximadamente 185,0%;
* **Soja:** aproximadamente 127,7%;
* **Batata:** aproximadamente 115,3%;
* **Arroz:** aproximadamente 110,7%.

Outras culturas também apresentaram crescimento, embora em magnitudes diferentes. O inhame apresentou a menor variação percentual entre os casos analisados, com aproximadamente **7,5%**.

Esses resultados indicam uma tendência geral de aumento da produtividade ao longo do período, mas não permitem atribuir esse crescimento a uma causa específica. A evolução pode estar relacionada a diferentes fatores que não foram isolados nesta análise.

Além disso, os indicadores temporais representam os países disponíveis em cada ano, não necessariamente um painel fixo com exatamente os mesmos países durante todo o período. Essa característica deve ser considerada na interpretação das tendências.

---

## 4. Associação com temperatura média

A análise de correlação identificou diferentes níveis de associação linear entre temperatura média e produtividade, variando de acordo com a cultura.

Em algumas culturas, a associação foi próxima de zero, enquanto em outras apresentou magnitude moderada. O milho, por exemplo, apresentou uma correlação agregada de aproximadamente **-0,40**, indicando uma associação linear negativa moderada no conjunto analisado.

Esse resultado significa que, nos dados agregados utilizados, valores mais elevados de temperatura estiveram associados a valores menores de produtividade para essa cultura. Isso não significa, entretanto, que temperaturas mais baixas causem maior produtividade.

A correlação não estabelece causalidade. Além disso, diferenças estruturais entre países podem influenciar o resultado agregado. Por esse motivo, os coeficientes devem ser interpretados como indicadores de associação observada nos dados e não como estimativas de efeito causal da temperatura sobre a produtividade.

---

## 5. Associação com precipitação

A associação entre precipitação e produtividade apresentou coeficientes relativamente baixos e variáveis entre as culturas.

Os resultados indicam que a precipitação apresentou associações lineares fracas com a produtividade na maior parte dos casos analisados. Isso significa que, considerando os dados disponíveis, não foi identificada uma relação linear forte e consistente entre os valores de precipitação e produtividade.

Um aspecto importante identificado durante a preparação dos dados foi que os valores de precipitação apresentam pouca variação dentro de determinados grupos de área e cultura. Em grande parte dos grupos analisados, a precipitação apresentou apenas um valor distinto ao longo do período, limitando a capacidade de utilizar essa variável para investigar variações temporais de produtividade.

Dessa forma, os resultados relacionados à precipitação devem ser interpretados com cautela. A ausência de uma associação forte nos dados não significa que a disponibilidade de água não seja relevante para a produção agrícola, mas indica apenas que essa relação não foi identificada de forma forte na estrutura dos dados analisados.

---

## 6. Associação com uso de pesticidas

A análise de correlação entre uso de pesticidas e produtividade apresentou associações positivas, porém de baixa magnitude.

Os coeficientes observados variaram aproximadamente entre **0,06 e 0,24**, indicando associações lineares positivas fracas entre as duas variáveis nas culturas analisadas.

Isso significa que, dentro do conjunto de dados utilizado, maiores valores de uso de pesticidas estiveram associados a maiores valores de produtividade em alguns casos, mas a magnitude dessa associação foi limitada.

Assim como nos demais fatores, esses resultados não permitem afirmar que o aumento do uso de pesticidas provoca aumento da produtividade. A produtividade agrícola é influenciada por múltiplos fatores, e a correlação observada não permite separar esses efeitos.

Além disso, a cobertura dos dados de pesticidas foi limitada em relação ao conjunto completo de produtividade, o que reduz a abrangência dessa comparação.

---

## 7. Padrões, anomalias e inconsistências

A análise exploratória identificou alguns valores extremos de produtividade.

Foram encontrados **8 registros com produtividade superior a 500.000 hg/ha** e **8 registros com produtividade igual a zero**.

Os valores mais elevados ficaram concentrados principalmente em registros de **banana-da-terra e batata**. Entre os casos identificados, destacou-se um registro de banana-da-terra no Quênia em 1964 com **1.000.000 hg/ha**.

Também foram identificados registros com produtividade igual a zero, concentrados principalmente em determinadas áreas e culturas, como Nova Caledônia e Território Palestino Ocupado.

Esses valores foram investigados durante a etapa de preparação e análise. Não foram encontradas evidências suficientes para classificá-los automaticamente como erros estruturais do conjunto de dados. Por isso, os registros foram mantidos na análise.

A diferença entre média e mediana também foi utilizada como indicador complementar para identificar possíveis influências de valores extremos sobre as distribuições de produtividade.

---

## 8. Limitações da análise

Os resultados deste projeto devem ser interpretados considerando algumas limitações do conjunto de dados.

A primeira limitação está relacionada à **cobertura desigual das variáveis auxiliares**. No conjunto integrado, a disponibilidade de precipitação, pesticidas e temperatura não é uniforme para todas as áreas, culturas e anos.

Além disso, os dados de temperatura apresentaram registros duplicados em determinadas combinações de área e ano, sendo necessário realizar tratamento durante a preparação dos dados.

A variável de precipitação apresentou pouca variação dentro de muitos grupos de área e cultura, reduzindo sua capacidade de explicar mudanças temporais de produtividade.

Também existem diferenças na disponibilidade de países ao longo do período analisado. Portanto, os indicadores temporais não representam necessariamente o comportamento de um mesmo conjunto fixo de países entre 1961 e 2016.

Outra limitação importante é que as correlações calculadas representam **associações lineares**. Elas não controlam simultaneamente outros fatores e, portanto, não devem ser interpretadas como relações causais.

Por fim, os dados agregados podem esconder diferenças importantes entre países, culturas e períodos. Uma análise mais aprofundada poderia utilizar métodos estatísticos ou modelos capazes de controlar simultaneamente diferentes variáveis e efeitos específicos de cada localidade ou cultura.

---

## 9. Conclusão geral

A análise de produtividade agrícola realizada neste projeto identificou diferenças relevantes entre culturas e áreas, além de uma tendência geral de aumento da produtividade ao longo do período de 1961 a 2016.

A produtividade mediana agregada apresentou crescimento de aproximadamente **77,8%** no período, enquanto algumas culturas apresentaram aumentos ainda mais expressivos. Ao mesmo tempo, foram observadas diferenças significativas entre os níveis de produtividade das culturas e entre as áreas analisadas.

As análises de temperatura, precipitação e uso de pesticidas apresentaram diferentes níveis de associação com a produtividade. A temperatura apresentou associações mais expressivas em algumas culturas, enquanto precipitação e pesticidas apresentaram, em geral, associações lineares de menor magnitude.

Esses resultados devem ser entendidos como **evidências descritivas e exploratórias**, e não como demonstrações de relações causais. O conjunto de dados possui limitações de cobertura, disponibilidade temporal e comparabilidade entre localidades que precisam ser consideradas antes de qualquer conclusão mais ampla.

De forma geral, o projeto permitiu construir uma visão integrada da produtividade agrícola, combinando exploração de dados, tratamento, análise estatística descritiva, indicadores, SQL, Python/Pandas e visualização em Power BI.

O principal resultado é a identificação de **padrões de produtividade, tendências temporais, diferenças entre áreas e culturas e associações com fatores ambientais e de produção**, estabelecendo uma base para análises futuras mais aprofundadas.
