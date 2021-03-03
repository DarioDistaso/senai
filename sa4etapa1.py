'''Sua primeira atividade será implementar a estrutura de Pilha, lembrando que este tipo de estrutura 
segue o conceito de que o primeiro a entrar será o último a sair. A Pilha deverá ser implementada utilizando 
uma estrutura homogênea com 20 posições, e as seguintes funções deverão ser implementadas para a manipulação 
da pilha:
a) Empilhar (adiciona um elemento no topo da pilha);
b) Desempilhar (remove e retorna um elemento do topo da pilha);
c) Limpar (remove todos os elementos da pilha);
d) Listar (lista todos os elementos armazenados na pilha);
e) Vazia (retorna verdadeiro se a pilha estiver vazia, e falso caso contrário).
Lembre-se de realizar todos os tratamentos necessários para que não aconteça o estouro da estrutura homogênea '''

#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 3 - Etapa 1: Busca pelo nome
#Autor: Dario Distaso
#Data atual: 02/03/2021

pilha = []

def empilhar(): # opção 1

    if len(pilha) < 20:
<<<<<<< HEAD
        produto = str(input("Digite o produto: ")).strip()
        pilha.append(produto)
        print(f'O produto inserido foi: {produto}')
=======
        produto = str(input(f'\nDigite o produto: '))
        pilha.append(produto)
        print(f'O nome inserido foi {produto}')
>>>>>>> teste
    
    elif len(pilha) == 20:
        print("A pilha já está cheia!")
        print(f'\nOs 20 produtos cadastrados são: {pilha}')

def desempilhar(): # opção 2
    if len(pilha) == 0:
        print("A pilha está vazia!")
    else:
        topo = pilha.pop()
        print(f'O produto removido foi: {topo}')

def limpar(): # opção 3
    if len(pilha) == 0:
        print("A pilha já está vazia!")
    else:
        pilha.clear()
        print("A pilha foi limpa!")

def listar(): # opção 4
    if len(pilha) == 0:
        print(f'A pilha {pilha} está vazia!')
    else:
        print(f'\nA pilha atual é {pilha}')

def vazia(): # opção 5
    if len(pilha) == 0:
<<<<<<< HEAD
        print("A pilha está vazia!")
    else:
        print("A pilha não está vazia!")
=======
        print("A pilha está vazia")
    else:
        print("A pilha não está vazia")
>>>>>>> teste

while True:
    print("""\n\t1 - Empilhar
    \t2 - Desempilhar
    \t3 - Limpar
    \t4 - Listar
    \t5 - A pilha está vazia?
    \t6 - Encerrar""")
    opcao = int(input("\nDigite uma opção: "))
    
    if opcao == 1:
        empilhar()
    
    elif opcao == 2:
       desempilhar()
    
    elif opcao == 3:
        limpar()
            
    elif opcao == 4:
        listar()
        
    elif opcao == 5:
        vazia()
    
    elif opcao == 6:
        print("\nVocê encerrou o programa!\n")
        break
    
    else:
        print("Opção inválida!")
    


