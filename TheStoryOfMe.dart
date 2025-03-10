import 'dart:io';

main(){
  print('Enter Your Name');
  String? name = stdin.readLineSync();

  print('Phone Number');
  String? num= stdin.readLineSync(); 
  print('Age');
  String? age= stdin.readLineSync();

  print('Height(in cm)');
  String? height= stdin.readLineSync();

  print('Weight(in kg)');
  String? weight= stdin.readLineSync();

  print('Address');
  String? Address= stdin.readLineSync();

  print('Hobbies');
  String? hobbies= stdin.readLineSync();

  


  print('My Name is $name');
  print('My Phone Number is $num');
  print('My Age is $age');
  print('My Height is $height cm');
  print('My Weight is $weight kg');
  print('My Address is $Address');
  print('My Hobbies are $hobbies ');
}
