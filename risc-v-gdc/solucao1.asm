# Disciplina: Arquitetura de Computadores
# Atividade: Avaliação 01 - Programação em Linguagem de Montagem
# Alunos: Isabella de Freitas Nunes

.data
.text
main:
	# Comando li significa load immediate, serve para carregar valores nos registradores
	li a0, 12      # Carrega o número 12 no registrador a0
	li a1, 18      # Carrega o número 18 no registrador a1

loop:
	# bne significa branch not equal, serve para comparar os valores de dois registradores
	# e se eles forem diferentes, desvia o fluxo para outro local
	# j serve para pular para outro local
	bne a0, a1, diferente		# Se a0 != a1 vai para diferente
	j fim                   # Se não cair no desvio anterior, segue para o fim

# blt significa branch less than, serve para comparar os valores de dois registradores
# e se o primeiro valor, no caso a0 for menor que a1, desvia o fluxo para outro local
diferente:
	blt a0, a1, menor       # Se a0 < a1 vai para menor
	sub a0, a0, a1          # Se não cair no desvio anterior, faz a0 - a1 e salva no a0
	j loop                  # Volta para o começo do loop

menor:
	sub a1, a1, a0          # Faz a1 - a0 e salva no a1
	j loop                  # Volta para o começo do loop

# No Linux, o registrador a7 é usado para indicar o número da chamada de sistema que se deseja usar
# Aqui o valor 1 corresponde à chamada de sistema SYS_exit, para encerrar esse programa
fim:
	li a7, 1               # Define a7 = 1 para indicar fim do programa
