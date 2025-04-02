import 'dart:io';

void main() {
  double salario = 0;
  int filho = 0;
  double salarioFamilia = 0;
  double salarioFinal = 0;
  String? leia;

  print('Digite seu salario: ');
  leia = stdin.readLineSync();  
  if (leia != null) {
    salario = double.parse(leia);  
  }

  print('Digite seu número de filho: ');
  leia = stdin.readLineSync(); 
  if (leia != null) {
    filho = int.parse(leia);  
  }

  if (salario < 2000) {
    salarioFamilia = filho * 60; 
  }

  salarioFinal = salario + salarioFamilia;

  print('Novo salário: R\$${salarioFinal}');
}
