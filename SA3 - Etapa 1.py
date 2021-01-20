'''SA3 ETAPA 1 - TESTE: Para a implementação da função de busca de um usuário pelo nome, é necessário
implementar uma função que receba por parâmetro o nome da pessoa. Essa função irá
verificar todas as posições da estrutura homogênea até encontrar uma que coincida
com o nome passado por parâmetro ou até finalizar a pesquisa sem encontrar a pessoa.
Caso encontre, deverá apresentar o nome e a idade da pessoa e retornar a sua posição;
caso contrário, deverá retornar -1. Além disso, deverá ser adicionado ao menu geral
do sistema a opção 4 – Buscar usuário pelo nome, a qual deverá solicitar o nome
do usuário para posteriormente chamar a função.'''

numPessoas = int(input("Quantas pessoas serão cadastradas? "))
pessoas = []
numero = int(input(" Digite: 1) Cadastrar um novo usuário 2) Listar os usuários cadastrados 3) Sair: "))

while numero >= 1 and numero <= 3:
  if numero == 1:
       nome = input("Digite o nome: ")
       idade = int(input("Digite a idade: "))
       pessoas.append([nome, idade])
       if len(pessoas) < numPessoas:
           print("Ainda tem posições disponíveis ")
           numero = int(input(" Digite: 1) Cadastrar um novo usuário 2) Listar os usuários cadastrados 3) Sair: "))
       else:
           print("Não tem mais posições disponíveis")
           numero = int(input(" Digite: 2) Listar os usuários cadastrados 3) Sair: "))
           while numero == 1:
               print("Não tem mais posições disponíveis: ")
               numero = int(input( "Digite: 2) Listar os usuários cadastrados 3) Sair: "))               
  elif numero == 2:
       print("Nomes dos usuários cadastrados: ", pessoas)
       break
  elif numero == 3:
       print("Você encerrou a aplicação")
       break
  else:
       print("Número inválido")
       
def procuraNome (p, x):
    i = 0
    while i < len(pessoas):
        if pessoas[i][0] == x:
            return i
        i += 1
        
    return -1

def procuraIdade (p, x):
    i = 0
    while i < len(pessoas):
        if pessoas[i][0] == x:
            return pessoas[i][1]
        i += 1
        
    return -1
    
numero = int(input("Digite 1 para cadastrar um novo usuário - 2 para listar os usuários cadastrados - 3 para sair - 4 Buscar usuário pelo nome: "))      
while numero == 4:
    nome = input("Procure um usuário pelo nome ou digite SAIR para encerrar: ")
    posicaoN = procuraNome (pessoas, nome)
    posicaoI = procuraIdade (pessoas, nome)
    if posicaoN >= 0:
        print("O nome da pessoa é", nome, ", a idade é ", posicaoI, " anos, e foi encontrada na posicao: ", posicaoN)
    elif nome == "SAIR":
        break
    else:
        print("O nome da pessoa não foi encontrado")
        