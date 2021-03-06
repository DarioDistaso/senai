#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 4 - Etapa 1: PILHA
#Autor: Dario Distaso
#Data atual: 06/03/2021

pilha = []

def empilhar(): # opção 1

    if len(pilha) < 20:
        produto = str(input("Digite o produto: ")).strip()
        pilha.append(produto)
        print(f'O produto inserido foi: {produto}')
    
    elif len(pilha) == 20:
        print("A pilha já está cheia!")

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
        print("A pilha está vazia!")
    else:
        print(f'\nA pilha atual é {pilha}')

def vazia(): # opção 5
    if len(pilha) == 0:
        print("A pilha está vazia!")
    else:
        print("A pilha não está vazia!")

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
    


