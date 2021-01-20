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

