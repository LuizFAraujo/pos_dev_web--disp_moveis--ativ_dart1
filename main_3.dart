// Implementar uma função de multiplicação que recebe apenas 2 argumentos posicionados.

import 'dart:math'; // Para gerar números aleatórios

void main() {
  // Testes com diferentes valores
  testarMultiplicacao(3, 5);
  testarMultiplicacao(-2, 4);
  testarMultiplicacao(7, 0);
  testarMultiplicacao(-3, -6);
  testarMultiplicacao(gerarNumeroAleatorio(), gerarNumeroAleatorio()); // Teste com dois números aleatórios
}

// Função para testar a multiplicação e imprimir o resultado
void testarMultiplicacao(int a, int b) {
  print("- Entrada:  $a  x  $b");
  print("   Result:  ${multiplicar(a, b)}\n");
}

// Função de multiplicação que recebe 2 argumentos posicionados
int multiplicar(int x, int y) {
  return x * y;
}

// Função para gerar um número aleatório entre -10 e 9
int gerarNumeroAleatorio() {
  return Random().nextInt(20) - 10;
}
