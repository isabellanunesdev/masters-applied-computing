# Disciplina: Arquitetura de Computadores
# Atividade: Avaliação 01 - Programação em Linguagem de Montagem
# Alunos: Isabella de Freitas Nunes

.data
	msg1: .string "Digite o primeiro número (positivo): "
	msg2: .string "Digite o segundo número (positivo): "
.text
main:
	# Imprime a mensagem msg1
	la a0, msg1
	li a7, 4
	ecall

	# Lê o primeiro número (x) e armazena em a0
	li a7, 5
	ecall
	mv a0, a0 # Move o valor lido para a0

	# Imprime a mensagem msg2
	la a0, msg2
	li a7, 4
	ecall

	# Lê o segundo número (y) e armazena em a1
	li a7, 5
	ecall
	mv a1, a0 # Move o valor lido para a1

loop:
	bne a0, a1, diferente # Se x != y, vai para a label "diferente"
	j fim                # Se x == y, vai para a label "fim"

diferente:
	blt a0, a1, menor    # Se x < y, vai para a label "menor"
	sub a0, a0, a1       # Se x >= y, faz x = x - y
	j loop               # Volta para o início do loop

menor:
	sub a1, a1, a0       # Se x < y, faz y = y - x
	j loop               # Volta para o início do loop

fim:
	mv a0, a0          # Move o valor de a0 (resultado) para a0 (para impressão)
	li a7, 1           # Define a7 = 1 para indicar saída
	ecall              # Chama o sistema operacional para imprimir a0
	li a7, 10          # Define a7 = 10 para indicar fim do programa
	ecall
	