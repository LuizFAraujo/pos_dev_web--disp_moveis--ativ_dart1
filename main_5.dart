// Criar uma lista de números inteiros e implementar as funcionalidades solicitadas
void main() {
  List<int> numeros = [];

  // Adicionar números à lista
  adicionarNumeros(numeros);
  print("- Lista, com números adicionados:  $numeros");

  // Remover um número específico
  removerNumero(numeros, 3);
  print("-  Lista, após números removidos:  $numeros\n");

  // Ordenar e exibir a lista
  numeros.sort();
  print("-   Lista ordenada:  $numeros");
  
  // Calcular a soma
  print("- Soma dos números:  ${calcularSoma(numeros)}");
}

void adicionarNumeros(List<int> lista) {
  lista.addAll([5, 3, 8, 1, 7]);
}

void removerNumero(List<int> lista, int numero) {
  lista.remove(numero);
}

int calcularSoma(List<int> lista) {
  return lista.fold(0, (soma, numero) => soma + numero);
}
