'''SA3 ETAPA 1 - TESTE: Para a implementação da função de BUSCA de um usuário pelo nome, é necessário
implementar uma função que receba por parâmetro o nome da pessoa. Essa função irá
verificar todas as posições da estrutura homogênea até encontrar uma que coincida
com o nome passado por parâmetro ou até finalizar a pesquisa sem encontrar a pessoa.
Caso encontre, deverá apresentar o nome e a idade da pessoa e retornar a sua posição;
caso contrário, deverá retornar -1. Além disso, deverá ser adicionado ao menu geral
do sistema a opção 4 – Buscar usuário pelo nome, a qual deverá solicitar o nome
do usuário para posteriormente chamar a função.'''

numPessoas = int(input("\nQuantas pessoas serão cadastradas? "))
lista_nomes = []
lista_idades = []

def procuraNome(nome):
    i = 0
    while i < len(lista_nomes):
        if lista_nomes[i] == nome:
            print("O nome da pessoa é",nome,",a idade é ", lista_idades[i], " anos, e foi encontrada na posicao", end = " ")
            return i #retorna a posição do nome da pessoa digitada na busca
        i += 1
    return -1 #caso não encontre o nome da pessoa na busca

#o loop while permite a inserção de nomes e idades até que tiver posições disponíveis na lista
while len(lista_nomes) < numPessoas:
    numero = int(input("\n1) Cadastrar um novo usuário - 2) Listar os usuários cadastrados - 3) Sair do sistema: "))
    if numero == 1:
        nome = input("Digite seu nome: ")
        lista_nomes.append(nome)
        idade = int(input("Digite sua idade: "))
        lista_idades.append(idade)
        print("Usuário cadastrado com sucesso!")
        print("-=-" * 20)
    elif numero == 2:
        print("Nomes: ", lista_nomes)
        print("Idades: ", lista_idades)
    elif numero == 3:
        print("Você encerrou a aplicação")
        break
    else:
        print("Número inválido!")
        
#digitando 2 são mostrados todos os usuarios cadastrados (nomes e idades)
numero = int(input("\n2) Listar os nomes e as idades de todos os usuários cadastrados - 4) Buscar pelo nome: - 3) Sair: ")) 

while True:
    if numero == 2:
        for i in range(numPessoas):
           print("\n", lista_nomes[i], "tem", lista_idades[i], "anos")
        break
    elif numero == 3:
        print("Você encerrou a aplicação")
        break
    elif numero == 4:
        nome = input("\nProcure um usuário pelo nome ou digite SAIR para encerrar: ")
        posicaoN = procuraNome(nome)
        if nome == "SAIR":
            print("Você encerrou o programa!")
            break
        elif posicaoN >= 0:
            print(posicaoN)
        elif posicaoN == -1:
            print("O nome da pessoa não foi encontrado")
        else:
            print("Número inválido, rode o programa novamente!\n")
    else:
        print("Número inválido, rode o programa novamente!\n")
        break #comando para não entrar em um loop infinito


        