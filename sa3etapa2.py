#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 3 - Etapa 2: Remoção do nome
#Autor: Dario Distaso
#Data atual: 22/02/2021

numPessoas = int(input("\nQuantas pessoas serão cadastradas? "))
lista_nomes = [] # lista para armazenar nomes
lista_idades = [] # lista para armazenar idades

def cadastrar(): # opcao 1
    if len(lista_nomes) < numPessoas:
        nome = str(input("\nDigite seu nome: ")).upper()
        lista_nomes.append(nome)
        idade = int(input("\nDigite sua idade: "))
        lista_idades.append(idade)
        print("\nUsuário cadastrado com sucesso!")
        print("=" * 30)
    else:
        print("\n\033[0;31mA lista está cheia!\033[m")

def listar(): # opcao 2
    if len(lista_nomes) == 0:
        print("\n\033[0;32mA lista está vazia!\033[m")
    else:
        for i in range(len(lista_nomes)):
            print("\n", lista_nomes[i], "tem", lista_idades[i], "anos")
        
def encerrar(): # opcao 3
    print("\nVocê encerrou a aplicação!\n")

def buscar(): #opcao 4
    nome = str(input("\nProcure um usuário pelo nome: ")).upper()
    i = 0
    while i <= len(lista_nomes):
        if nome not in lista_nomes:
            print("O nome não foi encontrado!")
            break
        else: 
            print("\nO nome da pessoa é", nome, "e foi encontrada na posicao", lista_nomes.index(nome))
            break
        i += 1
    
def remover(): # opcao 5
    
    if len(lista_nomes) == 0: # se a lista está vazia
        print("\n\033[0;32mA lista está vazia!\033[m")
    else: # se a lista ainda tem elementos
        nome = str(input("\nRemova um usuário pelo nome: ")).upper()
        if nome not in lista_nomes:
            print("Usuario inexistente!")
        else:
            posicao = lista_nomes.index(nome)
            idade = lista_idades.pop(posicao)
            removido = lista_nomes.pop(posicao)
            print("\nFoi removido o nome", removido, "de idade", idade, "na posição", posicao)
            print("Lista atualizada: ", lista_nomes)

while True:
    numero = int(input("""\n\t1 - Cadastrar um novo usuario
    \t2 - Listar os nomes e as idades de todos os usuários cadastrados 
    \t3 - Sair
    \t4 - Buscar pelo nome
    \t5 - Remover usuario: """))

    if numero == 1:
        cadastrar()

    elif numero == 2:
        listar()
        
    elif numero == 3:
        encerrar()
        break
        
    elif numero == 4:
       buscar()
        
    elif numero == 5:
        remover()
        
    else:
        print("\nNúmero inválido!\n")
        
        