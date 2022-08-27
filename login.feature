            #league: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o cliente acesse a página da EBAC-SHOP

            Cenário: Tela de checkout
            Quando eu digitar no campo usuário "marcelo_81@ebac.com.br" senha "@123321#"
            Então deve exibir a tela de "checkout"


            Cenário: Inserção de campos inválidos
            Quando eu digitar o usuário "marcelo.ebac.br" senha "@1"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválido"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então	 deve exibir a <mensagem> de alerta

            | usuario                      | senha      | mensagem                     |
            | "marcelo_81@ebac.com.br"     | "@123321#" | "marcelo_81, Bem vindo!"     |
            | "m.maria56@ebac.com.br"      | "abc#@123" | "maria56, Bem vindo!"        |
            | "antonio1956@ebac.com.br"    | "98.7a$bc" | "antonio1956, Bem vindo!"    |
            | "erika_a_v79@ebac.com.br"    | "a1b_2c3"  | "erika_a_v79, Bem vindo!"    |
            | "silvia_cardoso@ebac.com.br" | "9@8765@4" | "silvia_cardoso, Bem vindo!" |
            | "95_paulasouza@ebac.com.br"  | "pr199_0"  | "95_paulasouza, Bem vindo!"  |
            | "pamelagarcia_f@ebac.com.br" | "mj_@5687" | "pamelagarcia_f, Bem vindo!" |
            | "pedro_cruz.5c@ebac.com.br"  | "12rtg5"   | "pedro_cruz, Bem vindo!"     |
            | "miguel_luiz@ebac.com.br"    | "t5e8w8"   | "miguel_luiz, Bem vindo!"    |
            | "monica88_costa@ebac.com.br" | "159fyt"   | "monica88_costa, Bem vindo!" |

