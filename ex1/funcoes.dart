import 'dart:io';

void main(){
    print('Digite o preco: ');
    double preco = double.parse(stdin.readLineSync()!);

    if(preco > 1000){
        preco = preco - (preco * 0.08);
    }
        print('Preco final: ${preco.toStringAsFixed(2)}');
    } 

