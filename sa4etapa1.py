'''Sua primeira atividade será implementar a estrutura de Pilha, lembrando que este tipo de estrutura 
segue o conceito de que o primeiro a entrar será o último a sair. A Pilha deverá ser implementada utilizando 
uma estrutura homogênea com 20 posições, e as seguintes funções deverão ser implementadas para a manipulação 
da pilha:
a) Empilhar (adiciona um elemento no topo da pilha); PUSH (EM PYTHON: pilha.append())
b) Desempilhar (remove e retorna um elemento do topo da pilha); POP (EM PYTHON: pilha.pop())
c) Limpar (remove todos os elementos da pilha);
d) Listar (lista todos os elementos armazenados na pilha);
e) Vazia (retorna verdadeiro se a pilha estiver vazia, e falso caso contrário).
Lembre-se de realizar todos os tratamentos necessários para que não aconteça o estouro da estrutura homogênea '''

pilha = []
len(pilha) == 3

def adicionar(n):
    if len(pilha) < 3:
        pilha.append(n)
        return n
    else:
        print("a pilha está cheia")

def vazia():
    if len(pilha) > 0:
        return "A pilha não está vazia"
    elif len(pilha) == 0:
        return "A pilha está vazia"

def remover():
    if len(pilha) > 0:
        fim = pilha.pop()
        return "O nome removido foi: ", fim
    else:
        return "A pilha está vazia"


def limpar():
    pilha.clear()
    return pilha

def listar():
    return pilha

while len(pilha) < 3:
    
    nome = input("Digite 25 nomes: ")
    adicionar(nome)

print("Os 25 nomes digitados são: ", pilha)

while True:
    print("------------------------------------------------------------------------------------------------------")
    txt = int(input("Digite:\n2- para remover o primeiro nome da pilha 3- limpar todos os nomes 4- listar nomes 5- pilha vazia? 0- Você saiu do programa: "))
    
    if txt == 2:
        print(remover())
        
    elif txt == 3:
        print("A pilha foi limpa", limpar())

    elif txt == 4:
        print("Os nomes da pilha são: ", listar())

    elif txt == 5:
        print(vazia())

    elif txt == 0:
        print("Você saiu do programa!")
        break