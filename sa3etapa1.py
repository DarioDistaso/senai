#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 3 - Etapa 1: Busca pelo nome
#Autor: Dario Distaso
#Data atual: 22/02/2021

numPessoas = int(input("\nQuantas pessoas serão cadastradas? "))
lista_nomes = [] # lista para armazenar nomes
lista_idades = [] # lista para armazenar idades

def procuraNome(nome): # funcao para procurar usuario pelo nome
    i = 0
    while i < len(lista_nomes):
        if lista_nomes[i] == nome: # condicional se o usuario for encontrado
            print("\nO nome da pessoa é",nome,", a idade é ", lista_idades[i], " anos, e foi encontrada na posicao", end = " ")
            return i # retorna a posição do nome da pessoa digitada na busca
        i += 1
    return -1 # caso não encontre o nome da pessoa na busca

#o loop while permite a inserção de nomes e idades até que tiver posições disponíveis na lista
while len(lista_nomes) < numPessoas:
    numero = int(input("\n1) Cadastrar um novo usuário - 2) Listar os usuários cadastrados - 3) Sair do sistema: "))
    if numero == 1: # digitando 1 se cadastra um usuario
        nome = input("\nDigite seu nome: ")
        lista_nomes.append(nome)
        idade = int(input("\nDigite sua idade: "))
        lista_idades.append(idade)
        print("Usuário cadastrado com sucesso!")
        print("-=-" * 20)
    elif numero == 2: # digitando 2 são mostrados todos os usuarios cadastrados (nomes e idades)
        print("Nomes: ", lista_nomes)
        print("Idades: ", lista_idades)
    elif numero == 3: # digitando 3 o programa se encerra
        print("Você encerrou a aplicação")
        break
    else:
        print("Número inválido!")
        
while True:
    numero = int(input("\n2) Listar os nomes e as idades de todos os usuários cadastrados -  3) Sair - 4) Buscar pelo nome: "))
    if numero == 2:
        for i in range(numPessoas):
           print("\n", lista_nomes[i], "tem", lista_idades[i], "anos")
    elif numero == 3:
        print("\nVocê encerrou a aplicação!\n")
        break
    elif numero == 4:
        nome = str(input("\nProcure um usuário pelo nome: "))
        posicaoN = procuraNome(nome)
        if posicaoN >= 0: # caso for encontrado o nome digitado a funcao é chamada retornado nome, idade e posicao
            print(posicaoN)
        elif posicaoN == -1: # caso não for encontrado o nome digitado a funcao retorna -1 e imprime essa mensagem abaixo
            print("\nO nome da pessoa não foi encontrado")
        else:
            print("\nNúmero inválido!")
    else:
        print("\nNúmero inválido!")
        #break #comando para não entrar em um loop infinito


        