'''Agora você deverá implementar a estrutura de Fila, lembrando que esta estrutura segue o conceito de que o primeiro a entrar é o primeiro a sair. A fila deverá ser implementada utilizando uma estrutura homogênea com 25 posições, e as seguintes funções deverão ser implementadas para a manipulação da fila:
a) Adicionar (insere um elemento no final da fila);
b) Remover (remove e retorna o elemento do início da fila);
c) Limpar (remove todos os elementos da fila na ordem correta);
d) Listar (lista todos os elementos existentes na fila);
e) Vazia (retorna verdade se a fila estiver vazia, e falso caso contrário).
Lembre-se de realizar todos os tratamentos necessários para que não aconteça o estouro da estrutura homogênea.'''

fila = []

def adicionar(): # opção 1

    if len(fila) < 25:
        produto = str(input(f'\nDigite o produto: '))
        fila.append(produto)
<<<<<<< HEAD
        print(f'O produto inserido foi: {produto}')
=======
        print(f'O nome inserido foi {produto}')
>>>>>>> teste
    
    elif len(fila) == 25:
        print("A fila já está cheia!")
        print(f'\nOs 20 produtos cadastrados são: {fila}')

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
        print(f'A fila {fila} está vazia!')
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
<<<<<<< HEAD
        print("Opção inválida!")
=======
        print("Opção inválida!")
    
>>>>>>> teste
