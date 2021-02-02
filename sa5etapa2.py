'''MERGE SORT: Utilizando o algoritmo meiorgeSort, você e um colega deverão implementar uma função que receba por parâmetro uma estrutura homogênea desordenada. Aplique o algoritmo de ordenação e retorne a estrutura homogênea ordenada de forma crescente. Importante: para esta etapa, é obrigatória a utilização do conceito de recursividade.'''

'''import random

def divide(lista, inicio, fim):
    if (fim - inicio) > 1: #pelo menos 2 elementos na lista para continuar dividir
        meio = (inicio + fim) // 2
        divide(lista, inicio, meio) #divide a lista de esquerda
        divide(lista, meio + 1, fim) #divide a lista de direita
        fusao(lista, inicio, meio, fim)

def fusao(lista, inicio, meio, fim):
    #lista3 = lista.copy() 
    lista1 = lista[inicio:meio + 1]
    lista2 = lista[meio + 1:]
    i, j = 0, 0
    for k in range(inicio, fim):
        if i >= len(lista1): 
            lista[k] = lista2[j]
            j += 1
        elif j >= len(lista2):
            lista[k] = lista1[i]
            i += 1
        elif lista1[i] < lista2[j]: 
            lista[k] = lista1[i]
            i += 1 
            k += 1 
        else:
            lista[k] = lista2[j]
            j += 1
            k += 1

lista = list(range(0,10))

random.shuffle(lista)

divide(lista, 0, 9)

print(lista)'''


        
def mergesort(list1):
    if len(list1) > 1:
        mid = len(list1) // 2
        left_list = list1[:mid]
        right_list = list1[mid:]
        mergesort(left_list)
        mergesort(right_list)
        i = 0
        j = 0
        k = 0
        while i < len(left_list) and j < len(right_list):
            if left_list[i] < right_list[j]:
                list1[k] = left_list[i]
                i += 1
                k += 1 
            else:
                list1[k] = right_list[j]
                j += 1
                k += 1
        while i < len(left_list):
            list1[k] = left_list[i]
            i += 1
            k += 1 
        while j < len(right_list):
            list1[k] = right_list[j]
            j += 1
            k += 1


num = int(input("How many elements you want in list?: "))
list1 = [int(input()) for x in range(num)]
mergesort(list1)
print("sorted list is: ", list1)