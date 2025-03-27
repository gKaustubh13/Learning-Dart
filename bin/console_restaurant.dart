import 'dart:io';

import 'package:console_restaurant/color_extensions.dart';
import 'package:console_restaurant/restaurant_database.dart';

void main(List<String> arguments) {
  RestaurantDatabase database = RestaurantDatabase();
  printMenu(database);

  bool isCompleted = false;
  while (!isCompleted) {
    String? inputString = stdin.readLineSync();
    if (inputString == "X" || inputString == 'x') {
      double total = database.totalPrice();
      print('\nTotal price : ₹$total\n');
      
      database.printBill(); 
      isCompleted = true;
      continue;
    }

    int? input = int.tryParse(inputString?.trim() ?? '');
    if (input != null && input >= 1 && input <= database.dishes.length) {
      print('Enter quantity for ${database.dishes[input - 1].name}: ');
      String? quantityInput = stdin.readLineSync();
      int? quantity = int.tryParse(quantityInput?.trim() ?? '');

      if (quantity != null && quantity > 0) {
        database.addToCart(input, quantity);
        print('Added ${quantity}x ${database.dishes[input - 1].name} to cart.\n');
      } else {
        print('Invalid quantity. Please try again.');
      }
    } else {
      print('Invalid dish selection. Please try again.');
    }
  }
}

void printMenu(RestaurantDatabase database) {
  print('\x1B[2J\x1B[0;0H');
  printRestaurantHeader();
  for (var dish in database.dishes) {
    dish.printDetails();
  }
  print('Press "X" to place order'.red());
}

void printRestaurantHeader() {
  print('Welcome to JKB restaurant 😊'.red());
  print('\n');
  print('Please select the dish you want to order...'.blue());
}
