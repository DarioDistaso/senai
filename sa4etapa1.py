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

pilha = []

def empilhar(): # opção 1
    i = 1
    while i <= 20:
        if len(pilha) == 20:
            print("A pilha já está cheia!")
            break
        else:
            nome = str(input(f'\nDigite o {i}° nome: '))
            pilha.append(nome)
            print(f'O nome inserido foi {nome}')
        i += 1
    print("\nOs 20 nomes digitados são: ", pilha)

def desempilhar(): # opção 2
    if len(pilha) == 0:
        print("A pilha está vazia!")
    else:
        topo = pilha.pop()
        print(f'O nome removido foi {topo}')

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
        return True
    else:
        return False

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
        print(vazia())
    
    elif opcao == 6:
        print("\nVocê encerrou o programa!\n")
        break
    
    else:
        print("Opção inválida!")


