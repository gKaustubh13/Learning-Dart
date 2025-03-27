
import 'package:console_restaurant/color_extensions.dart';

class MenuDish {
  int id;
  String name;
  double price;
  String currency;
  int quantity;

  MenuDish({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    this.quantity = 0,
  });

  void printDetails() {
    print(
      '${'${id.toString().yellow()}. $name'.padRight(30, '.')}$currency$price [${quantity.toString().blue()}]',
    );
  }
}