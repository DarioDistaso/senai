#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 4 - Etapa 2: FILA
#Autor: Dario Distaso
#Data atual: 06/03/2021

fila = []

def adicionar(): # opção 1

    if len(fila) < 25:
        produto = str(input(f'\nDigite o produto: '))
        fila.append(produto)
        print(f'O produto inserido foi: {produto}')
    
    elif len(fila) == 25:
        print("A fila já está cheia!")

def remover(): # opção 2
    if len(fila) == 0:
        print("A fila está vazia!")
    else:
        inicio = fila.pop(0)
        print(f'O produto removido foi: {inicio}')

def limpar(): # opção 3
    if len(fila) == 0:
        print("A fila já está vazia!")
    else:
        fila.clear()
        print("A fila foi limpa!")

def listar(): # opção 4
    if len(fila) == 0:
        print("A fila está vazia!")
    else:
        print(f'\nA fila atual é {fila}')

def vazia(): # opção 5
    if len(fila) == 0:
        print("A fila está vazia")
    else:
        print("A fila não está vazia")

while True:
    print("""\n\t1 - Adicionar
    \t2 - Remover
    \t3 - Limpar
    \t4 - Listar
    \t5 - A fila está vazia?
    \t6 - Encerrar""")
    opcao = int(input("\nDigite uma opção: "))
    
    if opcao == 1:
        adicionar()
    
    elif opcao == 2:
       remover()
    
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
