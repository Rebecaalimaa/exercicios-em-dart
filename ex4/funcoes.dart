import 'dart:io';

void main() {
  print('Digite o primeiro lado do triângulo:');
  double a = double.parse(stdin.readLineSync()!);

  print('Digite o segundo lado do triângulo:');
  double b = double.parse(stdin.readLineSync()!);

  print('Digite o terceiro lado do triângulo:');
  double c = double.parse(stdin.readLineSync()!);

  if (a == b && b == c) {
    print('Triângulo Equilátero');
  } else if (a == b || a == c || b == c) {
    print('Triângulo Isósceles');
  } else {
    print('Triângulo Escaleno');
  }
}
