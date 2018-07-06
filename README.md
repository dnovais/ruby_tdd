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

### Teste de aceitação

Os testes de aceitação, famosos com a onda ágil, são, no fim, testes de sistema. Testes de aceitação, são aqueles onde as equipes ágeis dizem se uma determinada funcionalidade está "aceita" ou não.

## TDD (Test Driven Development)

### O que é TDD?

TDD é o desenvolvimento guiado por testes. Ou seja o teste é feito antes mesmo de colocar a mão na massa, primeiro cria-se o teste e depois o código. O que melhora o design do sistema.

Funciona da seguinte forma:

1. Cria - se o teste que falhe (RED);
2. Cria - se o código para passar no teste (GREEN);
3. Refatore o código;

Dessa forma o seu código ganha uma qualidade maior e garante uma redução de retrabalho consideravelmente.

"Perde-se" tempo no inicio do projeto, mas com o tempo, os benefícios são notáveis.

> TDD não é necessáriamente testar o software e sim uma espeficação de como utilizar o seu código e deixar que isso guie o design do software.

## RSPEC
A gem Rspec é uma meta-gem, que engloba outras gems, como por ex. a Rspec-core, Rspec-expectations e Rspec-mocks.

Podemos trabalhar com o Rspec no Ruby On Rails e em projetos Ruby puros. Como este projeto.

```
rspec --init
```

O comando rspec --init gera 2 arquivos:

````
- .rspec
- spec/spec_helper.rb
````

#### Em nosso projeto, a pasta principal (padrão das gems por ex.) lib.

O Rspec adiciona a pasta lib em nosso load_path, dessa forma conseguimos ter acesso aos arquivos criados dentro da lib.

Lembrando que precisamos adicionar o require 'calculator', como no exemplo:

````
require 'calculator'

describe Calculator do

 it 'Sum method for 2 numbers' do
 end

end
````

Todos os testes ficarão dentro de nossa pasta spec.

Os testes deveram seguir a nomenclatura _spec em seu sufixo, como por exemplo, ``calculator_spec.rb``.

#### Os testes devem ser:

1. Confiáveis
2. Fáceis de escrever
3. Fáceis de entender do ínicio ao fim
4. Não ser focados em velocidade e sim em qualidade

### Um teste padrão xUnit tem por padrão 4 etapas

> Xunit: Origem dos testes. 

- Setup: Coloca o que esta sendo testado (SUT - System Under Test). Ou seja a preparação do teste.
- Exercise: Quando você interage com o SUT.
- Verify: Quando verifica se o resultado/comportamento é o esperado.
- Teardown: O sistema volta ao estado anterior ao teste. O Rspec já cuida disso para nós.

## BDD (Behaviour Driven Development)

A sigla BDD significa Desenvolvimento guiado a comportamento. Hoje é uma abordagem de desenvolvimento de software, mais que uma prática.

No final o TDD é uma consequencia do processo do BDD. Onde saimos do teste em si, pensamos no comportamento.

Onde especifa-se comportamentos.

O BDD permite que o cliente participe da especificação dos cenários.

---

Uma boa prática - Consulte e consuma o site http://www.betterspecs.org/





