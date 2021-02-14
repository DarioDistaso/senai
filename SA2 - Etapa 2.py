<<<<<<< HEAD:sa2etapa2.py
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
        print("Nomes: ", lista_nomes)
        print("Idades: ", lista_idades, "\n")
        break #comando para não entrar em um loop infinito
    else:
        print("Número inválido, rode o programa novamente!\n")
        break #comando para não entrar em um loop infinito


=======
'''Nesta segunda etapa você deverá adicionar novos recursos à implementação
   realizada anteriormente. para tanto, deverá atender as seguintes especificações.
•	Utilizar estruturas homogêneas para armazenar as informações obtidas na etapa
    de cadastro de usuários.
•	Ao iniciar a execução do algoritmo, solicitar quantas pessoas serão cadastradas,
    para com este valor iniciar as estruturas homogêneas, sempre verificar se
    a estrutura homogênea possui alguma posição disponível para armazenar este novo usuário.
•	Ainda na opção 1, após digitar os dados do usuário, adicioná-lo sempre
    à próxima posição disponível.
•	Realizar a implementação da opção 2, listando o nome e a idade de todos os usuários
    cadastrados.
•	Toda a implementação realizada a etapa 1 deve ser mantida,
    apenas adicionando as novas configurações '''

numPessoas = int(input("Quantas pessoas serão cadastradas?: "))
lista = []

for i in range(numPessoas):
    print("a) Cadastrar um novo usuário - b) Listar os usuários cadastrados - c) Sair do sistema: ")
    numero = int(input("Digite 1 para cadastrar Nome e Idade e 3 para encerrar: "))
    if numero == 1:
        nome = input("Digite seu nome: ")
        idade = int(input("Digite sua idade: "))
        lista.append([nome, idade])
    elif numero == 3:
        print("Você encerrou a aplicação")
        break
    else:
        print("Número inválido")
numero = int(input("Digite 2 para listar os nomes e as idades de todos os usuários cadastrados: "))
if numero == 2:
    print(lista)

>>>>>>> parent of ff82f98 (alterei os nomes dos arquivos):SA2 - Etapa 2.py
