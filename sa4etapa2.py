'''Agora você deverá implementar a estrutura de Fila, lembrando que esta estrutura segue o conceito de que o primeiro a entrar é o primeiro a sair. A fila deverá ser implementada utilizando uma estrutura homogênea com 25 posições, e as seguintes funções deverão ser implementadas para a manipulação da fila:
a) Adicionar (insere um elemento no final da fila);
b) Remover (remove e retorna o elemento do início da fila);
c) Limpar (remove todos os elementos da fila na ordem correta);
d) Listar (lista todos os elementos existentes na fila);
e) Vazia (retorna verdade se a fila estiver vazia, e falso caso contrário).
Lembre-se de realizar todos os tratamentos necessários para que não aconteça o estouro da estrutura homogênea.'''

fila = []
len(fila) == 25

def adicionar(n):
    if len(fila) < 25:
        fila.append(n)
        return n
    else:
        print("a fila está cheia")

def vazia():
    if len(fila) > 0:
        return "A fila não está vazia"
    elif len(fila) == 0:
        return "A fila está vazia"

def remover():
    if len(fila) > 0:
        inicio = fila.pop(0)
        return "O nome removido foi: ", inicio
    else:
        return "A fila está vazia"


def limpar():
    fila.clear()
    return fila

def listar():
    return fila

while len(fila) < 25:
    
    nome = input("Digite 25 nomes: ")
    adicionar(nome)

print("Os 25 nomes digitados são: ", fila)

while True:
    print("------------------------------------------------------------------------------------------------------")
    txt = int(input("Digite:\n2- para remover o primeiro nome da fila 3- limpar todos os nomes 4- listar nomes 5- fila vazia? 0- Você saiu do programa: "))
    
    if txt == 2:
        print(remover())
        
    elif txt == 3:
        print("A fila foi limpa", limpar())

    elif txt == 4:
        print("Os nomes da fila são: ", listar())

    elif txt == 5:
        print(vazia())

    elif txt == 0:
        print("Você saiu do programa!")
        break