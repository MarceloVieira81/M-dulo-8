Feature: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Background: 
Dado que o cliente acesse o EBAC-SHOP

Scenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando o cliente selecionar a "cor"
E o "tamanho"
E a "quantidade"
Then deve exibir uma mensagem "Itens adicionados ao carrinho com sucesso"

Scenario: Deve permitir apenas 10 produtos por venda
Quando o cliente selecionar a "quantidade de produtos"
E a "quantidade" <= 10 
Then deve exibir uma mensagem "Itens adicionados ao carrinho com sucesso"

Scenario: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando o cliente selecionar a "cor" , "tamanho" , "quantidade de produtos"
E clicar no botão "limpar" 
Then a página deve voltar ao estado original


