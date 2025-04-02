import 'dart:io';

void main(){
    double salario;
    double inss;
    double desconto = 0;
    double salarioliquido;
    String? leia;

    print("Digite o salario: ");
    leia = stdin.readLineSync();
    if(leia != null){
        salario = double.parse(leia);
    } else {
        print("Entrada inválida.");
        return;
    }

    if(salario <= 1518.01){
        inss = 0.08;
    } else if(salario <= 2793.89){
        inss = 0.09;
    } else if(salario <= 4190.84){
        inss = 0.12;
    } else if(salario <= 8157.41){
        inss = 0.14;
    } else{
        inss = 951.62;
    }
   
    if(inss != 951.62)
        desconto = salario * inss;
    else{ 
        desconto = inss;
    }
    print("O desconto do INSS é: R\$ ${desconto.toStringAsFixed(2)}");
    salarioliquido = salario - desconto;
    print("O salario líquido é: R\$ ${salarioliquido.toStringAsFixed(2)}");
    
}