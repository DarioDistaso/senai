
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

while True:
    numero = int(input('''\n\t1) Cadastrar um novo usuário 
    \t2) Listar os nomes e as idades dos usuários
    \t3) Sair 
    \t4) Buscar pelo nome
    \t5) Remover usuario: '''))
    
    for x in range(numPessoas):
        if numero == 1: # digitando 1 se cadastra um usuario
            nome = str(input("\nDigite seu nome: ")).upper()
            lista_nomes.append(nome)
            idade = int(input("\nDigite sua idade: "))
            lista_idades.append(idade)
            print("\n\033[0;32mUsuário cadastrado com sucesso!\033[m")
            print("=" * 30)
            if len(lista_nomes) == numPessoas:
                print("\033[0;31mA lista está cheia!\033[m")
    
    if numero == 2:
        for i in range(len(lista_nomes)):
           print("\n", lista_nomes[i], "tem", lista_idades[i], "anos")
        if len(lista_nomes) == 0:
            print("\nA lista está vazia!\n")
   
    elif numero == 3:
        print("\nVocê encerrou a aplicação!\n")
        break
    
    elif numero == 4:
        if len(lista_nomes) == 0:
            print("\nA lista está vazia!")
        else:
            nome = str(input("\nProcure um usuário pelo nome: ")).upper()
            if procuraNome(lista_nomes, nome) >= 0: # caso for encontrado o nome digitado a funcao é chamada retornado nome, idade e posicao
                print("O nome da pessoa é ", nome, ", a idade é ", lista_idades[procuraNome(lista_nomes, nome)], " anos, e foi encontrada na posicao", procuraNome(lista_nomes, nome), "\n")
            elif procuraNome(lista_nomes, nome) == -1: #caso o nome não for encontrado, a funcao retorna-1 
                print("\nO nome da pessoa não foi encontrado")
            else:
                print("\nNúmero inválido!\n")
    
    elif numero == 5:
        if len(lista_nomes) == 0:
            print("\nA lista está vazia!")
        else:
            nome = str(input("\nRemova um usuário pelo nome: ")).upper()
            if nome not in lista_nomes:
                print("usuario inexistente!")
        # remocao = procuraNome(lista_nomes, nome) # a variavel remocao recebe o nome da funcao
            else:
                print("\nFoi removido o nome", removeNome(lista_nomes, nome))
                print("Lista atualizada: ", lista_nomes)
                
else:
    print("\nNúmero inválido!\n")
        