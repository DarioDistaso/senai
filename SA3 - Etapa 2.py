'''SA 3 – ETAPA 2 (remover usuário)
 Agora que você já possui uma função para buscar um usuário pelo nome, deverá, com ajuda de seus colegas, 
 implementar uma função para remover um usuário da estrutura homogênea. Para tanto, deverá buscar 
 a posição referente à estrutura homogênea pelo nome da pessoa e, caso encontre, deverá remover 
 essas informações da estrutura. Após realizar a remoção de uma pessoa do cadastro, deverá trazer todas 
 as informações armazenadas em posições posteriores uma posição para trás, a fim de não deixar uma posição 
 em branco entre as informações. Também deverá adicionar mais uma opção no menu: 5 – Remover usuário. 
 Após selecionar essa opção, deverá ser solicitado o nome do usuário para, caso encontrado, efetivar a 
 sua remoção da estrutura homogênea.'''

numPessoas = int(input("Quantas pessoas serão cadastradas? "))
pessoas = []
numero = int(input("Digite: 1) Cadastrar um novo usuário 2) Listar os usuários cadastrados 3) Sair: "))

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
    #def removeNome (p, x):
        #pessoas.pop(posicaoN)
        
    return -1

def procuraIdade (p, x):
    i = 0
    while i < len(pessoas):
        if pessoas[i][0] == x:
            return pessoas[i][1]
        i += 1
        
    return -1
    
numero = int(input("Opções: 3) Sair 5) Remover usuário pelo nome: "))      

if numero == 5:
    nome = input("Digite o nome do usuário a ser removido: ")
    posicaoN = procuraNome (pessoas, nome)
    posicaoI = procuraIdade (pessoas, nome)
    print("O usuário", pessoas.pop(posicaoN), "foi removido")
    print("Lista atualizada: ", pessoas)
elif numero == 3:
    print("você encerrou a aplicação")
else:
    print("O nome da pessoa não foi encontrado")
        


 
