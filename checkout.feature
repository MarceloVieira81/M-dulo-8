#league: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
Dado Que o cliente acesse a página de cadastro do site EBAC-SHOP

Cenário: Cadastrado com sucesso
Quando o cliente preencher seus dados obrigatórios marcado com asteriscos
E o cliente informar o mome "Marcelo"
E o cliente informar o sobrenome "Vieira"
E o cliente informar o Pais "Brasil"
E o cliente informar o Endereço "Quintiliano antonio, 100"
E o cliente informar a cidade "São Paulo"
E o cliente informar o cep "04841-120"
E o cliente informar o telefone "99123-4567"
E o cliente informar o e-mail "marcelo_81@ebac.com.br"
E pressionar "finalizar"
Então deve exibir uma mensagem na tela "cadastro finalizado com sucesso"

Cenário: E-mail inválido
Quando o cliente inserir no campo e-mail algum formato inválido
E o cliente informar o e-mail "marcelo_81ebac.com.br"  
E pressionar "finalizar"
Então deve exibir uma mensagem de erro "Cadastro não realizado, formato inválido"

Cenário: Cadastro com campos vazios
Quando o cliente durante o cadastro deixar algum campo em branco
E o cliente informar o mome "Marcelo"
E o cliente informar o sobrenome "Vieira"
E o cliente informar o Pais ""
E o cliente informar o Endereço "Quintiliano antonio, 100"
E o cliente informar a cidade "São Paulo"
E o cliente informar o cep "04841-120"
E o cliente informar o telefone ""
E o cliente informar o e-mail "marcelo_81@ebac.com.br"
E pressionar "finalizar"
Então deve exibir uma mensagem de erro "Cadastro não realizado, favor verificar os campos obrigatórios"