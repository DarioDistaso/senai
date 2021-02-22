#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 3 - Etapa 2: Remoção do nome
#Autor: Dario Distaso
#Data atual: 22/02/2021

numPessoas = int(input("\nQuantas pessoas serão cadastradas? "))
lista_nomes = [] # lista para armazenar nomes
lista_idades = [] # lista para armazenar idades

def procuraNome(l, n): # funcao para procurar usuario pelo nome
    i = 0
    while i < len(l):
        if l[i] == n: # condicional se o usuario for encontrado
            return i # retorna a posição do nome da pessoa digitada na busca
        i += 1
    return -1 # caso não encontre o nome da pessoa

def removeNome (l, n):
    i = 0
    while i < len(l):
        if l[i] == n: # condicional se o usuario for encontrado
            return l.pop(i) # remove o nome da pessoa
        i += 1
    return -1 # caso não encontre o nome da pessoa

# o loop while permite a inserção de nomes e idades até que tiver posições disponíveis na lista
while len(lista_nomes) < numPessoas:
    numero = int(input("\n1) Cadastrar um novo usuário - 2) Listar os usuários cadastrados - 3) Sair do sistema: "))
    if numero == 1: # digitando 1 se cadastra um usuario
        nome = str(input("\nDigite seu nome: ")).upper()
        lista_nomes.append(nome)
        idade = int(input("\nDigite sua idade: "))
        lista_idades.append(idade)
        print("\nUsuário cadastrado com sucesso!")
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
    numero = int(input("\n2) Listar os nomes e as idades de todos os usuários cadastrados -  3) Sair - 4) Buscar pelo nome - 5) Remover usuario: "))
    if numero == 2:
        for i in range(len(lista_nomes)):
           print("\n", lista_nomes[i], "tem", lista_idades[i], "anos")
    elif numero == 3:
        print("\nVocê encerrou a aplicação!\n")
        break
    elif numero == 4:
        nome = str(input("\nProcure um usuário pelo nome: ")).upper()
        if procuraNome(lista_nomes, nome) >= 0: # caso for encontrado o nome digitado a funcao é chamada retornado nome, idade e posicao
            print("O nome da pessoa é ", nome, ", a idade é ", lista_idades[procuraNome(lista_nomes, nome)], " anos, e foi encontrada na posicao", procuraNome(lista_nomes, nome))
        elif procuraNome(lista_nomes, nome) == -1: # caso não for encontrado o nome digitado a funcao retorna -1 e imprime essa mensagem abaixo
            print("\nO nome da pessoa não foi encontrado")
        else:
            print("\nNúmero inválido!\n")
    elif numero == 5:
        nome = str(input("\nRemova um usuário pelo nome: ")).upper()
        if nome not in lista_nomes:
            print("usuario inexistente!")
        # remocao = procuraNome(lista_nomes, nome) # a variavel remocao recebe o nome da funcao
        else:
            remocao = removeNome(lista_nomes, nome)
            print("\nFoi removido o nome", remocao)
            print("Lista atualizada: ", lista_nomes)
        if len(lista_nomes) == 0:
            print("\nForam removidos todos os usuarios!\n")
            break
    else:
        print("\nNúmero inválido!\n")
        