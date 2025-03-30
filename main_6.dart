// Criar um Set de strings representando nomes de alunos em uma turma
// - Adicionar três nomes ao conjunto.
// - Tentar adicionar um nome que já existe no conjunto e imprimir o conjunto após essa tentativa.
// - Remover um nome do conjunto.
// - Verificar se um nome específico está presente no conjunto e imprimir o resultado.

void main() {
  // Lista de alunos
  List<String> listaAluno = ["João", "Maria", "Luiz", "Telma", "Lucas"];

  Set<String> alunos = {};
  String nomeAluno;
  bool alunoPresente;

  // Adicionar alunos
  adicionarAlunos(alunos, listaAluno);
  print("*** Inclusão de alunos ***");
  print("- Alunos adicionados:  ${alunos.join(', ')}");

  // Tentar adicionar repetido
  nomeAluno = "Lucas";
  adicionarAlunoExistente(alunos, nomeAluno);
  print("\n*** Adicionar aluno existente ***");
  print("- Aluno: $nomeAluno");
  print("- Lista: ${alunos.join(', ')}");

  // Remover aluno
  nomeAluno = "Telma";
  removerAluno(alunos, nomeAluno);
  print("\n*** Remover aluno ***");
  print("- Aluno: $nomeAluno");
  print("- Lista: ${alunos.join(', ')}");

  // Verificar se aluno está presente
  nomeAluno = "Lucas";
  alunoPresente = verificarAluno(alunos, nomeAluno);
  print("\n*** Checar aluno presente ***");
  print("- Aluno: $nomeAluno");
  print("- Lista: ${alunos.join(', ')}");
  exibirStatusAluno(alunoPresente, nomeAluno);

  // Verificar se outro aluno está presente
  nomeAluno = "Pedro";
  alunoPresente = verificarAluno(alunos, nomeAluno);
  print("\n*** Checar aluno presente ***");
  print("- Aluno: $nomeAluno");
  print("- Lista: ${alunos.join(', ')}");
  exibirStatusAluno(alunoPresente, nomeAluno);
}

// Função para adicionar alunos ao conjunto
void adicionarAlunos(Set<String> alunos, List<String> listaAluno) {
  alunos.addAll(listaAluno);
}

// Função para tentar adicionar um nome que já existe
void adicionarAlunoExistente(Set<String> alunos, String nome) {
  alunos.add(nome);
}

// Função para remover um aluno
void removerAluno(Set<String> alunos, String nome) {
  alunos.remove(nome);
}

// Função para verificar se um aluno está no conjunto
bool verificarAluno(Set<String> alunos, String nome) {
  return alunos.contains(nome);
}

// Função para exibir o status de um aluno com base na sua presença na turma
void exibirStatusAluno(bool alunoPresente, String nomeAluno) {
  if (alunoPresente) {
    print("- O aluno $nomeAluno está na turma.");
  } else {
    print("- O aluno $nomeAluno não está na turma.");
  }
}
