<<<<<<< HEAD:sa2etapa1.py
#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 2 - Etapa 1: Cadastro de nome e idade dos usuarios
#Autor: Dario Distaso
#Data atual: 05/02/2021

while True: #o programa vai pedir ao usuario digitar 2 numeros (1 ou 3)
    print("\n1) Cadastrar um novo usuário - 2) Listar os usuários cadastrados - 3) Sair do sistema: ")
    numero = int(input("\nDigite 1 para cadastrar Nome e Idade e 3 para encerrar: "))
    if numero == 1: #o usario consegue se cadastrar se digitar o numero 1
        nome = input("\nDigite seu nome: ")
        idade = int(input("Digite sua idade: "))
    elif numero == 3: #o programa termina a execucao se for digitado o numero 3
        print("\nVocê encerrou o programa\n")
        break 
    else:
        print("\nNúmero inválido") #se o usuario digitar um numero diferente de 1 ou 3 





=======
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
>>>>>>> parent of ff82f98 (alterei os nomes dos arquivos):SA2 - Etapa 1.py
    