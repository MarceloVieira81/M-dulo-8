            #league: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado Que o cliente acesse a página de cadastro do site EBAC-SHOP

            Cenário: Cadastrado com sucesso
            Quando o cliente preencher seus dados obrigatórios marcado com asteriscos
            E o cliente informar o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            E pressionar "finalizar"
            Então deve exibir uma <mensagem> na tela "cadastro finalizado com sucesso"


            Exemplos:
            | nome      | sobrenome  | pais     | Endereço              | cidade      | cep         | telefone      | email                    | mensagem                          |
            | "Marcelo" | "Vieira"   | "Brasil" | "Rua Quintiliano 100" | "São Paulo" | "04841-120" | "11976811222" | "marcelo_81@ebac.com.br" | "cadastro finalizado com sucesso" |
            | "Marcia"  | "Silva"    | "Brasil" | "Rua central"         | "Guarulhos" | "05051-7"   | "11916549877" | "maria1_@ebac.com.br"    | "cadastro não realizado"          |
            | "antonio" | "Pinheiro" | "Brasil" | "Rua Direita 50"      | "São Paulo" | "04271-000" | "11977568842" | "antonio.ap@ebac.com.br" | "cadastro finalizado com sucesso" |

            Cenário: E-mail inválido
            Quando o cliente inserir no campo e-mail algum formato inválido
            E o cliente informar o <e-mail> e <senha>
            E pressionar "finalizar"
            Então deve exibir uma <mensagem> de erro "Cadastro não realizado, formato inválido"

            Exemplos:
            |e-mail|senha|mensagem|
            |"mar'e?@ebac.com.br"|"123@marcia"|"Cadastro não realizado, formato inválido"|
            |"marcelo_81@ebac.com.br"|"abc@123"|"Cadastro realizado com sucesso"|
            |"123^@ebac.com.br"|"super_senha"|"Cadastro não realizado, formato inválido"|


            Cenário: Cadastro com campos vazios
            Quando o cliente durante o cadastro deixar algum campo em branco
            E o cliente informar o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <e-mail>
            E pressionar "finalizar"
            Então deve exibir uma <mensagem> de erro "Cadastro não realizado, favor verificar os campos obrigatórios"


            Exemplos:
            | nome    | sobrenome   | pais       | Endereço              | cidade           | cep         | telefone      | email                    | mensagem                                                         |
            | "Érika" | "Aparecida" | "Brasil"   | "Rua Quintiliano 100" | ""               | "04487-722" | ""            | "marcelo_81@ebac.com.br" | "Cadastro não realizado, favor verificar os campos obrigatórios" |
            | "Bruno" | "Xavier"    | "Portugal" | "Rua Asturias"        | "Porto"          | ""          | ""            | "maria1_@ebac.com.br"    | "Cadastro não realizado, favor verificar os campos obrigatórios" |
            | "pedro" | "Cruz"      | "Brasil"   | "Rua Horizonte 401"   | "Belo Horizonte" | "05171-404" | "11948996511" | "pedro_cruz@ebac.com.br" | "Cadastro realizado com sucesso"                                 |