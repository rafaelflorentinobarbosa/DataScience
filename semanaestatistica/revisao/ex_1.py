# 1 - Criar a venv
# python -m venv venv

# 2 - Ativar a venv
# cd venv -> cd Scripts -> activate ou deactivate

print("Alô mundo \nSemana Estatística")

"""
    Um professor precisa sortear bombons para diversos alunos.
    Esses alunos serão sorteados randômicamente.
    O número deve corresponder ao número do diário.
"""

import random

# looping - iteração - repetição - laço
while True:
    # Padrão snack_case (PEP-8)
    sorteio_turma = random.randint(1,25)
    print(sorteio_turma)
    resposta = input("Deseja sortear outro número? (s/n)").strip().lower()

    if(resposta != "s"):
        print("encerrando o sorteio")
        break
