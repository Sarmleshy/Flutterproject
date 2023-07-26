import 'dart:io';

void main() {
    //WAHALA AREA
    //STORAGE FACILITY AREA
  
  const Map<int, int> sizes = {
      1: 500, 
      2: 650, 
      3: 1000
  };
  const Map<int, int> types = {
    1: 300,
    2: 350,
    3: 330,
    4: 300,
    5: 370,
    6: 400,
    7: 350
  };
  const Map<int, int> toppings = {
    1: 100,
    2: 100,
    3: 100,
    4: 100,
    5: 100,
    6: 100,
    7: 100,
    8: 100
  };

  // PIZZA SIZE AREA
  int sizeOption;
  int sizePrice;
  while (true) {
    print('Welcome to Sarmleshy's Pizza Hut');
    print('Please select your preferred size of pizza:');
    print('1. Small (N500)');
    print('2. Medium (N650)');
    print('3. Large (N1000)');
    sizeOption = int.parse(stdin.readLineSync()!);
    if (sizes.containsKey(sizeOption)) {
      sizePrice = sizes[sizeOption]!;
      break;
    }
    print('Invalid input. Please select a valid option.\n');
  }

  // TYPE OF PIZZA AREA
  int typeOption;
  int typePrice;
  while (true) {
    print('\nPlease select your preferred pizza:');
    print('1. Veggie (N300)');
    print('2. Pepperoni (N350)');
    print('3. Meat Pizza (N330)');
    print('4. Margherita Pizza (N300)');
    print('5. BBQ Chicken Pizza (N370)');
    print('6. Hawaiian Pizza (N400)');
    print('7. Buffalo Pizza (N350)');
    typeOption = int.parse(stdin.readLineSync()!);
    if (types.containsKey(typeOption)) {
      typePrice = types[typeOption]!;
      break;
    }
    print('Invalid input. Please select a valid option.\n');
  }

  // TOPPINGS AREA
  int toppingsPrice = 0;
  print('\nWould you like toppings? (y/n)');
  String wantsToppings = stdin.readLineSync()!;
  List<int> selectedToppings = [];
  if (wantsToppings.toLowerCase() == 'y') {
    while (true) {
      print('\nPlease select your preferred type of toppings (comma-separated numbers):');
      print('1. Mushroom (N100)');
      print('2. Onions (N100)');
      print('3. Green pepper (N100)');
      print('4. Extra cheese (N100)');
      print('5. Pepperoni (N100)');
      print('6. Sausage (N100)');
      print('7. Pineapple (N100)');
      print('8. Ham (N100)');
      selectedToppings =
          stdin.readLineSync()!.split(',').map(int.parse).toList();
      bool allValid = true;
      for (int topping in selectedToppings) {
        if (!toppings.containsKey(topping)) {
          allValid = false;
          break;
        }
      }
      if (allValid) {
        toppingsPrice = selectedToppings.fold(
            0, (int sum, int topping) => sum + toppings[topping]!);
        break;
      }
      print('Invalid input. Please select valid topping numbers.\n');
    }
  }

  // GETTING CUSTOMER DETAILS
  print('\nPlease provide your name:');
  String name = stdin.readLineSync()!;
  print('Please provide your phone number:');
  String phoneNumber = stdin.readLineSync()!;
  print('Please provide your address:');
  String address = stdin.readLineSync()!;

  // CALCULATION AREA
  int totalPrice = sizePrice + typePrice + toppingsPrice;

  // RECEIPT AREA
  print('\n^^^^^ RECEIPT ^^^^^\n');
  print('Name: $name');
  print('Phone Number: $phoneNumber');
  print('Address: $address\n');
  print('Size: ${getSizeName(sizeOption)}');
  print('Type: ${getTypeName(typeOption)}');
 
  if (wantsToppings.toLowerCase() == 'y') {
    print('Toppings:');
    for (int topping in selectedToppings){print('- ${getToppingName(topping)}\n');
    }
  }
  print('\nTotal Price: N$totalPrice\n');
  print('Thanks for your patronage $name, Your pizza would be delivered shortly');
  print('\n^^^^^^^^^^^^^^^^^^^\n');
}
// SWITCH AND CASE  AREA
String getSizeName(int sizeOption) {
  switch (sizeOption) {
    case 1:
      return 'Small';
    case 2:
      return 'Medium';
    case 3:
      return 'Large';
    default:
      return '';
  }
}

String getTypeName(int typeOption) {
  switch (typeOption) {
    case 1:
      return 'Veggie';
    case 2:
      return 'Pepperoni';
    case 3:
      return 'Meat Pizza';
    case 4:
      return 'Margherita Pizza';
    case 5:
      return 'BBQ Chicken Pizza';
    case 6:
      return 'Hawaiian Pizza';
    case 7:
      return 'Buffalo Pizza';
    default:
      return '';
  }
}

String getToppingName(int toppingOption) {
  switch (toppingOption) {
    case 1:
      return 'Mushroom';
    case 2:
      return 'Onions';
    case 3:
      return 'Green pepper';
    case 4:
      return 'Extra cheese';
    case 5:
      return 'Pepperoni';
    case 6:
      return 'Sausage';
    case 7:
      return 'Pineapple';
    case 8:
      return 'Ham';
    default:
      return '';
  }
}