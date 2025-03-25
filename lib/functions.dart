void main() {
  Square s1 = Square(side: 50);
  s1.printDetails();

  List<Square> squares = [
    Square(side: 50),
    Square(side: 30),
    Square(side: 20),
    Square(side: 40),
    Square(side: 60),
  ];

  double totalSide = 0;

  for (Square square in squares) {
    totalSide += square.side;
  }

  double averageSide = totalSide / squares.length;
  print('Average side length of squares is: $averageSide');

  for (Square square in squares) {
    print(square.calculateArea());
  }
}

class Square {
  double side;

  Square({required this.side});

  double calculatePerimeter() {
    return 4 * side;
  }

  double calculateArea() {
    return side * side;
  }

  void printDetails() {
    print('Square\nSide: $side\nPerimeter: ${calculatePerimeter()}\nArea: ${calculateArea()}\n');
  }
}
