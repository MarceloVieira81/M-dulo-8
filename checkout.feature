Feature: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Background: 
Given Que o cliente acesse a página de cadastro do site EBAC-SHOP

Scenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
When o cliente preencher seus "dados obrigatórios" marcado com asteriscos
And  apertar o botão "finalizar"
Then deve exibir uma mensagem "cadastro finalizado com sucesso"

Scenario: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
When o cliente inserir no campo "e-mail" algum formato inválido
And  apertar o botão "finalizar"
Then deve exibir uma mensagem de erro "Cadastro não realizado, formato inválido"

Scenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
When o cliente deixar algum "campo" obrigatório em branco
And  apertar o botão "finalizar"
Then deve exibir uma mensagem de erro "Cadastro não realizado, favor verificar os campos obrigatórios"