import 'dart:io';

void main() {
  print("Somatório de Números Divisíveis por 3 ou 5");
  
  // Obtém o valor inserido pelo usuário e verifica se é positivo
  int? userInput;
  do {
    stdout.write("Digite um valor positivo: ");
    userInput = int.tryParse(stdin.readLineSync()!);
  } while (userInput == null || userInput < 0);

  // Inicializa a variável para armazenar o somatório
  int somatorio = 0;

  // Loop para somar os números divisíveis por 3 ou 5
  for (int i = 1; i < userInput; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }

  // Exibe o resultado no console
  print("O somatório é: $somatorio");
}