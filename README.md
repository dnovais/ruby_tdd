# TDD and BDD with Ruby On Rails

### Teste Unitário
Teste unitário significa fazer testes da menor parte de um código de um sistema, que consiste em validar as entradas e saídas (I/O).

Os testes unitários tem como objetivo garantir que o projeto continue funcionando perfeitamente após as alterações do dia a dia.

Em sistemas orientados a objetos, é comum que a **unidade** seja uma **classe**. Ou seja, quando queremos escrever testes de unidade para a classe Pedido, essa bateria de testes testará o funcionamento da classe Pedido, isolada, sem interações com outras classes.

### Teste de Integração

O teste de integração consiste em testar a integração entre os módulos, classes e serviços. Ou seja, encontrar falhas na integração entre as **unidades**.

Com os testes unitário feitos, podemos testar a integração entre os requisitos funcionais do sistemas, desempenho e confiabilidade na modelagem do sistema.

### Teste de Sistemas

Este nível de teste verifica se o sistema funciona com todas as unidades trabalhando juntas. Ele é comumente chamado de teste de caixa preta, já que o sistema é testado “com tudo ligado”: banco de dados, serviços web, batch jobs, e etc.

## TDD (Test Driven Development)

### O que é TDD?

TDD é o desenvolvimento guiado por testes. Ou seja o teste é feito antes mesmo de colocar a mão na massa, primeiro cria-se o teste e depois o código. O que melhora o design do sistema.

Funciona da seguinte forma:

1. Cria - se o teste que falhe (RED);
2. Cria - se o código para passar no teste (GREEN);
3. Refatore o código;

Dessa forma o seu código ganha uma qualidade maior e garante uma redução de retrabalho consideravelmente.

"Perde-se" tempo no inicio do projeto, mas com o tempo, os benefícios são notáveis.
 
