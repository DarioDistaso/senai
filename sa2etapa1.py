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





    
