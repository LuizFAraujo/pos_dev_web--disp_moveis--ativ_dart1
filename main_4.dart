// Implementar uma função de soma que recebe 4 argumentos nomeados obrigatórios.
// Testar trocar a ordem dos argumentos nomeados ao passar os valores para a função.

void main() {
  // Testes com diferentes ordens dos argumentos
  testarSomaPosicionais(1, 2, 3, 4); // Teste com argumentos posicionais
  testarSomaNomeados(a: 1, b: 2, c: 3, d: 4);
  testarSomaNomeados(d: 4, b: 2, a: 1, c: 3); // Ordem diferente
  testarSomaNomeados(c: -2, a: 8, d: 0, b: 6);
}

// Função para testar a soma e imprimir o resultado com argumentos nomeados
void testarSomaNomeados({required int a, required int b, required int c, required int d}) {
  print("- Entrada: a: $a, b: $b, c: $c, d: $d");
  print("   Result: ${somar(a: a, b: b, c: c, d: d)}\n");
}

// Função para testar a soma e imprimir o resultado com argumentos posicionais
void testarSomaPosicionais(int a, int b, int c, int d) {
  testarSomaNomeados(a: a, b: b, c: c, d: d);
}

// Função de soma que recebe 4 argumentos nomeados obrigatórios
int somar({required int a, required int b, required int c, required int d}) {
  return a + b + c + d;
}
