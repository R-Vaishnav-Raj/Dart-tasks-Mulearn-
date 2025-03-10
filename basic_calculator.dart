import 'dart:io';

int main(){
  double num1,num2;
  print('Choose an operation');
  print('1.Addition');
  print('2.Subtraction');
  print('3.Multiplication');
  print('4.Division');
  print('5.Modulus');
  print('6.Comparison');
  print('7.Exit');

  while(true){
    print('Choose an operation ');
    int choice =int.parse(stdin.readLineSync()?? '');
    print('Enter the first numbers');
    num1=double.parse(stdin.readLineSync()?? '');
    print('Enter the second numbers');
    num2=double.parse(stdin.readLineSync()?? '');
    switch(choice){
      case 1:
        print('Sum of $num1 and $num2 is ${num1+num2}');
        break;
      case 2:
        print('Difference of $num1 and $num2 is ${num1-num2}');
        break;
      case 3:
        print('Product of $num1 and $num2 is ${num1*num2}');
        break;
      case 4:
        if(num2!=0)
          print('Quotient  of $num1 and $num2 is ${num1/num2}');
        else
          print('Cannot be divided');
        break;
      case 5:
        print('Modulus of $num1 and $num2 is ${num1%num2}');
        break;
      case 6:
        if(num1>num2){
          print('$num1 is greater');
        }else if(num2>num1){
          print('$num2 is greater');
        }else{
          print('They are equal');
        }
        break;
      case 7:
        print('Exiting...');
        return 0;
        
      default:
        print('Invalid Entry');
    }
  }
}