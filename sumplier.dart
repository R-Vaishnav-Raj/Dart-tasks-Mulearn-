import 'dart:io';

void main(){
  int num;
  print('Enter the a number');
  int sum=0;
  num=int.parse(stdin.readLineSync()?? '');
  print('The multiples are :');
  for(int i=0;i<10;i++){
    int temp=num*i;
    sum=sum+temp;
    print('$temp');
  }
  print('The sum of all multiples is $sum');
}