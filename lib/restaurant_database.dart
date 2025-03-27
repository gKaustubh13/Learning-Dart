import 'package:console_restaurant/menu_dish.dart';

class RestaurantDatabase {
  List<MenuDish> dishes = [
    MenuDish(id: 1, name: 'Classic Pizza', price: 400, currency: '₹'),
    MenuDish(id: 2, name: 'Paneer Pizza', price: 550, currency: '₹'),
    MenuDish(id: 3, name: 'Veggie Pizza', price: 450, currency: '₹'),
    MenuDish(id: 4, name: 'Mushroom Pizza', price: 450, currency: '₹'),
    MenuDish(id: 5, name: 'Chilli Pizza', price: 600, currency: '₹'),
    MenuDish(id: 6, name: 'French Fries', price: 200, currency: '₹'),
    MenuDish(id: 7, name: 'Nachos', price: 250, currency: '₹'),
    MenuDish(id: 8, name: 'Juice', price: 300, currency: '₹'),
    MenuDish(id: 9, name: 'Iced Tea', price: 350, currency: '₹'),
  ];

  void addToCart(int dishId, int quantity) {
    for (var dish in dishes) {
      if (dish.id == dishId) {
        dish.quantity += quantity;
        return;
      }
    }
  }

  double totalPrice() {
    double total = 0;
    for (var dish in dishes) {
      total += dish.price * dish.quantity;
    }
    return total;
  }

  void printBill() {
    print('\n======= BILL SUMMARY =======');
    double subtotal = 0;

    for (var dish in dishes) {
      if (dish.quantity > 0) {
        double itemTotal = dish.price * dish.quantity;
        subtotal += itemTotal;
        print('${dish.name} - ₹${dish.price} x ${dish.quantity} = ₹$itemTotal');
      }
    }

    double tax = subtotal * 0.05; // 5% tax
    double grandTotal = subtotal + tax;

    print('----------------------------');
    print('Subtotal: ₹$subtotal');
    print('Tax (5%): ₹$tax');
    print('Grand Total: ₹$grandTotal');
    print('============================\n');
  }
}
