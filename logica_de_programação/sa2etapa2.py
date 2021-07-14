#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 2 - Etapa 2: Cadastro de nome e idade dos usuarios com estruturas homogeneas
#Autor: Dario Distaso
#Data atual: 14/02/2021

numPessoas = int(input("\nQuantas pessoas serão cadastradas?: ")) 
# definimos aqui o tamanho das listas de nomes e idades
lista_nomes = []
lista_idades = []

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
numero = int(input("\n2) Listar os nomes e as idades de todos os usuários cadastrados: ")) 

while True:
    if numero == 2:
        for i in range(numPessoas):
           print(lista_nomes[i], "tem", lista_idades[i], "anos")
    else:
        print("Número inválido, rode o programa novamente!\n")
    break #comando para não entrar em um loop infinito


