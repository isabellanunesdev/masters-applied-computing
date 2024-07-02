// Disciplina: Arquitetura de Computadores
// Atividade: Avaliação 01 - Programação em Linguagem de Montagem
// Alunos: Isabella de Freitas Nunes

#include <stdio.h>

int main() {
  int x, y;

  printf("Digite o primeiro número (positivo): ");
  scanf("%d", &x);

  printf("Digite o segundo número (positivo): ");
  scanf("%d", &y);

  while (x != y) {
    if (x < y) {
      y = y - x;
    } else {
      x = x - y;
    }
  }

  printf("O MDC é: %d\n", x);
  
  return 0;
}
