// Criar uma variável inteira que recebe um número aleatório.  
// - Usar um **ternário** para verificar se esse número é par ou ímpar e imprimir o resultado.

import 'dart:math'; // Para gerar número aleatório

void main() {
  // Testes com diferentes números
  testarNumero(4);
  testarNumero(7);
  testarNumero(0);
  testarNumero(-5);
  testarNumero(); // testar um número aleatório
}

// Função para testar um número específico ou gerar um aleatório se não for informado
void testarNumero([int? numero]) {
  numero ??= Random().nextInt(100); // Se número for nulo, gera um aleatório
  print("- Entrada: $numero");
  print("   Result: ${verificarParOuImpar(numero)}\n");
}

// Função para verificar se um número é par ou ímpar usando um operador ternário
String verificarParOuImpar(int numero) {
  return numero % 2 == 0 ? "Número Par" : "Número Ímpar";
}
