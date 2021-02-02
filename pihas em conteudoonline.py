def algoritmo_locadora_de_livros():
    topo = 0
    vet = list()
    y = None
    opcao = -1
    k = 0
    data = ''
    nome = ''

    n = 3
    topo = 0
    while opcao != 0:
        print("Nossa locadora de livros")
        while opcao != 0 or k < n:
            print("incluir ... 1")
            print("Topo...... ", topo)
            if topo > 0:
                for i, s in enumerate(vet):
                    print(vet[i])
            print("Menu Operacoes")
            print("0 - Sair")
            print("1 - ALUGAR")
            tmp = input("Escolha uma opcao ... ")
            opcao = int(tmp)
            if opcao == 1:
                v = input("Informe o nome do livro ... ")
                nome = input("Informe o nome do cliente ... ")
                data = input("Data do emprestimo ... ")
                if topo == 3:
                    print("Overflow - Inclusao Nao Executada - pressione enter")
                    v = input()
                else:
                    topo = topo + 1
                    vet.append(str(v) + ' ' + str(nome) + ' ' + str(data))
        tmp = input("Escolha uma opcao ... ")
        opcao = int(tmp)
    pass
algoritmo_locadora_de_livros()