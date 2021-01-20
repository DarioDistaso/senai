"""Nesta primeira etapa você deverá trabalhar apenas com a elaboração das estruturas
   de controle e repetição.
Para tanto, deverá ser criado um algoritmo em pseudocódigo, com as seguintes
especificações: 
•	implementar uma repetição que solicite as informações do usuário até que seja
    informado o número três.
•	a cada repetição, apresentar o menu com as seguintes opções:
    a) cadastrar um novo usuário;
    b) listar todos os usuários cadastrados;
    c) sair do sistema.
•	Ao ser digitado o numero 1, solicitar as informações do usuário, que são Nome e Idade.
•	Ao ser digitado o numero 3, encerrar o comando de repetição."""

while True:
    print("a) Cadastrar um novo usuário - b) Listar os usuários cadastrados - c) Sair do sistema: ")
    numero = int(input("Digite 1 para cadastrar Nome e Idade e 3 para encerrar: "))
    if numero == 1:
        nome = input("Digite seu nome: ")
        idade = int(input("Digite sua idade: "))
    elif numero == 3:
        print("Você encerrou a aplicação")
        break
    else:
        print("Número inválido")
    