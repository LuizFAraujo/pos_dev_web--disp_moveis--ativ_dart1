// Criar um Map que armazena a relação entre nomes de alunos e suas notas:
//    - Adicionar três pares de nome e nota ao mapa.
//    - Atualizar a nota de um aluno específico.
//    - Imprimir todos os alunos e suas notas. Usar um `foreach`.
//    - Calcular e imprimir a média das notas dos alunos.

void main() {
  // Colação nomes/notas
  Map<String, double> alunoBoletim = {};

  print("*** Adicionar alunos ***");
  adicionarAluno(alunoBoletim, "João", 8.5);
  imprimirNomes(alunoBoletim);
  adicionarAluno(alunoBoletim, "Maria", 7.0);
  imprimirNomes(alunoBoletim);
  adicionarAluno(alunoBoletim, "Luiz", 9.2);
  imprimirNomes(alunoBoletim);

  print("\n*** Alunos/Notas adicionados ***");
  imprimirAlunos(alunoBoletim);

  print("\n*** Atualizar nota de aluno ***");
  atualizarNota(alunoBoletim, "Luiz", 8.0);
  print("- Aluno: Luiz");
  print("   Nota: ${alunoBoletim['Luiz']?.toStringAsFixed(2)} (nova)");

  print("- Aluno: Carlos");
  bool sucesso = atualizarNota(alunoBoletim, "Carlos", 6.5);
  print(sucesso ? "- Nota atualizada." : "   Erro: Aluno não encontrado.");

  print("\n*** Alunos/Notas atualizados ***");
  imprimirAlunos(alunoBoletim);

  print("\n*** Alunos e suas notas ***");
  alunoBoletim.forEach((nome, nota) {
    print("- Aluno: $nome, Nota: ${nota.toStringAsFixed(2)}");
  });

  print("\n*** Média das notas ***");
  double media = calcularMedia(alunoBoletim);
  print("- Média: ${media.toStringAsFixed(2)}");
}

// Função para adicionar um aluno e sua nota à coleção
void adicionarAluno(Map<String, double> alunoBoletim, String nome, double nota) {
  alunoBoletim[nome] = nota;
}

// Função para atualizar a nota de um aluno
bool atualizarNota(Map<String, double> alunoBoletim, String nome, double novaNota) {
  if (alunoBoletim.containsKey(nome)) {
    alunoBoletim[nome] = novaNota;
    return true;
  } else {
    return false;
  }
}

// Função para imprimir os nomes acumulando os alunos já adicionados
void imprimirNomes(Map<String, double> alunoBoletim) {
  print("- Aluno(s): ${alunoBoletim.keys.join(', ')}");
}

// Função para imprimir os alunos e suas notas
void imprimirAlunos(Map<String, double> alunoBoletim) {
  alunoBoletim.forEach((nome, nota) {
    print("- Aluno: $nome");
    print("   Nota: ${nota.toStringAsFixed(2)}");
  });
}

// Função para calcular a média das notas
double calcularMedia(Map<String, double> alunoBoletim) {
  double soma = 0.0;
  alunoBoletim.forEach((nome, nota) {
    soma += nota;
  });
  return soma / alunoBoletim.length;
}
