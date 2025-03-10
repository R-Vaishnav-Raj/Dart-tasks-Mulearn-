import 'dart:io';

class Car {
  Car(this.name, this.price);
  String name;
  double price;

  void changePrice(double newPrice) {
    price = newPrice;
  }
}

class Person {
  Person(this.name, this.ownedCars, this.moneyLeft);
  String name;
  List<Car> ownedCars;
  double moneyLeft;

  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      ownedCars.add(car);
      print("\n${car.name} was added to your collection.");
      viewOwnedCars(this);

      moneyLeft -= car.price;
      print("Money left in bank is \$$moneyLeft");
    } else {
      print("\nInsufficient bank balance");
    }
  }

  void sellCar(Car car) {
    if (ownedCars.remove(car)) {
      print('${car.name} was sold');
      viewOwnedCars(this);
      moneyLeft += car.price;
      print("Money in your bank is \$$moneyLeft");
    } else {
      print('${car.name} is not present in the list');
    }
  }
}

void viewOwnedCars(Person person) {
  print('Owned cars:');
  for (Car car in person.ownedCars) {
    print('${car.name}');
  }
}

void main() {
  print("Car Buying & Selling Platform");

  // Creating some cars
  Car tesla = Car("Tesla", 35000);
  Car ford = Car("Ford", 28000);
  Car honda = Car("Honda", 26000);
  Car audi = Car("Audi", 30000);
  List<Car> carInventory =[tesla,ford,honda,audi];
  // Create an array of cars
  List<Car> cars = [tesla, ford, honda, audi];

  print("Enter your name: ");
  String name = stdin.readLineSync() ?? "PersonOne";

  print("Enter your bank balance ");
  double bankBalance = double.parse(stdin.readLineSync() ?? '');

  // Creating a person with provided name and bank balance
  Person person1 = Person(name, [], bankBalance);

  while (true) {
    print('\n1. Buy Car');
    print('2. Sell Car');
    print('3. View Owned Cars');
    print('4. Update price');
    print('5. List Cars in the Inventory');
    print('6. Exit');
    print("Enter the choice (1-5): ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        for (int i = 0; i < carInventory.length; i++) {
          print('${i + 1}. ${carInventory[i].name} - \$${carInventory[i].price.toStringAsFixed(2)}');
        }
        print('Enter the number of the car you want to buy: ');
        int carIndex = int.parse(stdin.readLineSync()!) - 1;
        if (carIndex >= 0 && carIndex < carInventory.length) {
          person1.buyCar(carInventory[carIndex]);
        } else {
          print('Invalid choice.');
        }
        break;
      case 2:
        if(person1.ownedCars.isEmpty){
          print('You do not own any cars');
        }else{
          print('Owned Cars');
          for (int i = 0; i < person1.ownedCars.length; i++) {
            print('${i + 1}. ${person1.ownedCars[i].name} - \$${person1.ownedCars[i].price}');
          }
          print('Enter the number of the car to sell');
          int carIndex = int.parse(stdin.readLineSync()!);

          if (carIndex >= 0 && carIndex <= person1.ownedCars.length) {
            person1.sellCar(person1.ownedCars[carIndex-1]);
          } else {
            print('Invalid choice.');
          }
        }
        break;

      case 3:
         if(person1.ownedCars.isEmpty){
          print('You do not own any cars');
        }else{
          print('Owned Cars');
          for (int i = 0; i < person1.ownedCars.length; i++) {
            print('${i + 1}. ${person1.ownedCars[i].name} - \$${person1.ownedCars[i].price}');
          }
        } 
        break;

      case 4:
        if(carInventory.isEmpty){
          print('You do not own any cars');
        }else{
          print('Owned Cars');
          for (int i = 0; i < carInventory.length; i++) {
          print('${i + 1}. ${carInventory[i].name} - \$${carInventory[i].price.toStringAsFixed(2)}');
        }
          print('Enter the number of the car to change price');
          int carIndex = int.parse(stdin.readLineSync()!)-1;

          if (carIndex >= 0 && carIndex <= carInventory.length) {
            print('Enter new price');
            double newPrice = double.parse(stdin.readLineSync()!);
            carInventory[carIndex].changePrice(newPrice);
          } else {
            print('Invalid choice.');
          }
        }

        break;

      case 5:
        for (int i = 0; i < carInventory.length; i++) {
          print('${i + 1}. ${carInventory[i].name} - \$${carInventory[i].price.toStringAsFixed(2)}');
        }
        break;
      case 6:
        print("Exiting from the platform...");
        return;

      default:
        print("Invalid option. Select a number from 1-5");
    }
  }
}
