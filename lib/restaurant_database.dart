import 'package:console_restaurant/menu_dish.dart';

class RestaurantDatabase {
  List<MenuDish> dishes = [
    MenuDish(id: 1, name: 'Sada Dosa', price: 60, currency: '₹'),
    MenuDish(id: 2, name: 'Masala Dosa', price: 100, currency: '₹'),
    MenuDish(id: 3, name: 'Idli', price: 70, currency: '₹'),
    MenuDish(id: 4, name: 'Thatte Idli', price: 100, currency: '₹'),
    MenuDish(id: 5, name: 'Khatta Dhokla', price: 40, currency: '₹'),
    MenuDish(id: 6, name: 'Khaman Dhokla', price: 45, currency: '₹'),
    MenuDish(id: 7, name: 'Chutney', price: 20, currency: '₹'),
    MenuDish(id: 8, name: 'Sambhar', price: 30, currency: '₹'),
    MenuDish(id: 9, name: 'Ojas Vita', price: 50, currency: '₹'),
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
