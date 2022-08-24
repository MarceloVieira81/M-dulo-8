Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login autenticação na plataforma
    Para visualizar meus pedidos

    Background:
        When que o cliente acesse a página da EBAC-SHOP

    Scenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout
        When eu digitar o usuário "marcelo@ebac.com.br"
        And a senha "@123321"
        Then deve exibir a tela de checkout


    Scenario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
        When eu digitar o usuário "marcelo.ebac.com.br"
        And a senha "@123321"
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválido"

    Scenario Outline: Autenticar multiplos usuários
        When eu digitar <usuario>
        And a <senha>
        Then deve exibir a <mensagem> de alerta

            | usuario               | senha     | mensagem              |
            | "marcelo@ebac.com.br" | "@123321" | "Marcelo, Bem vindo!" |
            | "maria@ebac.com.br"   | "abc123"  | "Maria, Bem vindo!"   |
            | "antonio@ebac.com.br" | "987abc"  | "Antonio, Bem vindo!" |
            | "erika@ebac.com.br"   | "a1b2c3"  | "erika, Bem vindo!"   |
            | "silvia@ebac.com.br"  | "987654"  | "silvia, Bem vindo!"  |
            | "paula@ebac.com.br"   | "pr1990"  | "José, Bem vindo!"    |
            | "pamela@ebac.com.br"  | "mj5687"  | "José, Bem vindo!"    |
            | "pedro@ebac.com.br"   | "12rtg5"  | "José, Bem vindo!"    |
            | "luiz@ebac.com.br"    | "t5e8w8"  | "José, Bem vindo!"    |
            | "monica@ebac.com.br"  | "159fyt"  | "José, Bem vindo!"    |

