// Fazer um programa que recebe um número e verificar a qual mês aquele número se refere.  
// Exemplo: `1 - Janeiro`, `2 - Fevereiro`, `3 - Março`, ...
// Usar `switch case` e, caso o número inserido seja inválido, exibir a mensagem:  
// "Número inválido, deve ser de 1 a 12."

void main() {
  // Testes com diferentes entradas
  var numero1 = 1;
  var numero2 = 5;
  var numero3 = 13;  // Número inválido
  var numero4 = "abc"; // Entrada com caractere
  var numero5 = "8";   // Entrada com string numérica

  // Exibição dos testes no formato solicitado
  print("Teste 1 - Entrada: $numero1");
  print("           Result: Mês = ${testarEntrada(numero1)}");
  print("");
  
  print("Teste 2 - Entrada: $numero2");
  print("           Result: Mês = ${testarEntrada(numero2)}");
  print("");
  
  print("Teste 3 - Entrada: $numero3");
  print("           Result: ${testarEntrada(numero3)}");
  print("");
  
  print("Teste 4 - Entrada: '$numero4'");
  print("           Result: ${testarEntrada(numero4)}");
  print("");
  
  print("Teste 5 - Entrada: '$numero5'");
  print("           Result: Mês = ${testarEntrada(numero5)}");
}


// Função que recebe um número e retorna o mês correspondente
String obterMes(int numero) {
  switch (numero) {
    case 1:
      return "Janeiro";
    case 2:
      return "Fevereiro";
    case 3:
      return "Março";
    case 4:
      return "Abril";
    case 5:
      return "Maio";
    case 6:
      return "Junho";
    case 7:
      return "Julho";
    case 8:
      return "Agosto";
    case 9:
      return "Setembro";
    case 10:
      return "Outubro";
    case 11:
      return "Novembro";
    case 12:
      return "Dezembro";
    default:
      return "Número inválido, deve ser de 1 a 12.";
  }
}

// Função para testar a entrada e retornar uma mensagem adequada
String testarEntrada(dynamic entrada) {
  // Verifica se a entrada é um número inteiro
  if (entrada is int) {
    return obterMes(entrada);
  }

  // Verifica se a entrada é uma string
  if (entrada is String) {
    // Tenta converter a string para um número
    var numero = int.tryParse(entrada);

    // Verifica se a conversão falhou
    if (numero == null) {
      return "Valor não numérico.";
    }
    return obterMes(numero);
  }

  // Caso a entrada não seja nem int nem String
  return "Entrada inválida.";
}



