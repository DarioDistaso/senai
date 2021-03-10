#Disciplina: [Logica de Programacao]
#Professor: Lucas Naspolini Ribeiro
#Descricao: SA 5 - Etapa 1: BUBBLESORT
#Autor: Dario Distaso
#Data atual: 08/03/2021

lista = []
num = int(input("\nQuantos números quer colocar na lista? ")) 

print("\nInsere os números:\n ")

for k in range(num):
    lista.append(int(input()))
print(f'Lista desordenada: {lista}')

for i in range(len(lista) - 1): # repete as comparações len(lista) - 1 vezes
    for j in range(len(lista) - 1): # vai comparando os valores do primeiro índice da lista até o penúltimo 
        if lista[j] > lista[j+1]:
            lista[j], lista[j+1] = lista[j+1], lista[j]

print(f'Lista ordenada: {lista}')
