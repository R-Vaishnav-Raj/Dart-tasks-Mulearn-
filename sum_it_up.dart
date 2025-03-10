import 'dart:io';

void main(){
  int num1,num2;
  print('Enter the two numbers');
  num1=int.parse(stdin.readLineSync()?? '');
  num2=int.parse(stdin.readLineSync()?? '');
  int sum =num1+num2;
  print('The sum of $num1 + $num2 is $sum');
}