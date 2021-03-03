'''SA 5 – ETAPA 1 (Bubble Sort)
Utilizando o algoritmo BubbleSort, você e um colega deverão implementar uma função que receba por parâmetro uma estrutura homogênea desordenada. Aplique o algoritmo de ordenação e retorne a estrutura homogênea ordenada de forma CRESCENTE.
Resultados esperados: Código fonte com as implementações solicitadas. Critérios de avaliação: • implementar uma função que recebe uma estrutura homogênea por parâmetro e devolver esta estrutura ordenada; • implementar o algoritmo de ordenação de acordo com a especificação do bubblesort; • utilizar os comandos de repetição e decisão de forma adequada; • entregar o código fonte no prazo estabelecido. Forma de entrega: Código fonte postado em ferramenta do Ambiente Virtual de Aprendizagem (AVA)'''

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
