#league: pt

Funcionalidade: Configurar Produto
Como configurar meu produto 
Para depois inserir no carrinho

Contexto: 
Dado que o cliente acesse o EBAC-SHOP

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando o cliente selecionar a cor "azul" tamanho "G" quantidade "1"
E pressionar "inserir no carrinho"
Então deve exibir uma mensagem na tela "Itens adicionados ao carrinho com sucesso"

Cenário: Quantidade permitida de um produto
Quando o cliente selecionar a "quantidade de produtos" e a quantidade for <= 10 
E pressionar "inserir no carrinho"
Então deve exibir uma mensagem na tela "Itens adicionados ao carrinho com sucesso"

Cenário: Botão “limpar” 
Quando o cliente selecionar a "cor" , "tamanho" , "quantidade de produtos"
E pressionar "Limpar" 
Então a página deve voltar ao estado original


