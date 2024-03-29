#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 5 - Etapa 2: MERGESORT
#Autor: Dario Distaso
#Data atual: 08/03/2021


def mergesort(lista):
    if len(lista) > 1: # condição de parada: vai parar a divisão até que tiver um só elemento na lista
        meio = len(lista) // 2
        esquerda = lista[:meio] # divide a lista do inicio até o meio e chamamos essa metade de esquerda
        direita = lista[meio:] # divide a lista do meio até o fim e chamamos essa metade de direita
        mergesort(esquerda) # chamada recursiva da função mergesort
        mergesort(direita) # chamada recursiva da função mergesort
        
        i = 0 # indice da lista de esquerda
        j = 0 # indice da lista de direita
        k = 0 # indice da lista original onde vamor recolocar os numeros ordenados

        while i < len(esquerda) and j < len(direita): # os indices i e j serão sempre menores do tamanho das sub-listas
            if esquerda[i] < direita[j]:
                lista[k] = esquerda[i] # coloca o numero menor na lista original
                i += 1 # incrementa o indice da sub-lista esquerda
                k += 1 # incrementa o indice da lista original
            else:
                lista[k] = direita[j] # coloca o numero menor na lista original
                j += 1 # incrementa o indice da sub-lista direita
                k += 1 # incrementa o indice da lista original

        while i < len(esquerda): # se algum numero da esquerda ficar para fora do primeiro loop será colocado na lista original
                lista[k] = esquerda[i] # coloca o numero menor na lista original
                i += 1 # incrementa o indice da sub-lista esquerda
                k += 1 # incrementa o indice da lista original
        while j < len(direita): # se algum numero da direita ficar para fora do primeiro loop será colocado na lista original
                lista[k] = direita[j] # coloca o numero menor na lista original
                j += 1 # incrementa o indice da sub-lista direita
                k += 1 # incrementa o indice da lista original

lista = []
num = int(input("\nQuantos números quer colocar na lista? ")) 
print("\nInsere os números:\n ")

for k in range(num):
    lista.append(int(input()))
print(f'Lista desordenada: {lista}')

mergesort(lista)
print(f'Lista ordenada: {lista}')
