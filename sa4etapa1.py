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
len(pilha) == 20

def empilhar(n):
    pilha.append(n)
    return pilha

def desempilhar():
    topo = pilha.pop()
    return topo

def limpar():
    pilha.clear()

def listar():
    return pilha

def vazia():
    if len(pilha) == 0:
        print(pilha)
        #return True
    else:
        print("a lista não está vazia")
        #return False


while len(pilha) < 20:
    nome = input("Digite 20 nomes: ")
    lista = empilhar(nome)
print("Os 20 nomes digitados são: ", lista)

txt = input("Deseja remover o ultimo nome da pilha? ")

if txt == "sim":
    print("O nome removido foi: ", desempilhar())

txt2 = input("Deseja limpar a pilha? ")

if txt2 == "sim":
    print("a lista está vazia") 
    print(limpar())
    print(vazia())
else:
    print('confira a sua lista: ', listar())

