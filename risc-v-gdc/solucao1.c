// Disciplina: Arquitetura de Computadores
// Atividade: Avaliação 01 - Programação em Linguagem de Montagem
// Alunos: Isabella de Freitas Nunes

#include <stdio.h>

int main() {
  int x = 12, y = 18, resultado;

  while (x != y) {
    if (x < y) {
      y = y - x;
    } else {
      x = x - y;
    }
  }

  resultado = x;
  
  return 0;
}
