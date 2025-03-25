void main(){

//String
  var firstName = '  Kaustubh';
  var lastName = 'Gondkar  ';
  var fullName = "$firstName $lastName";
  print(fullName);
  print(fullName.toLowerCase());
  print(fullName.toUpperCase());
  print(fullName.length);
  print(fullName.trim());
  print(fullName.replaceAll("a", "A"));
  print(firstName.split("ubh").first);
  print(firstName.split("Kau").last);
  print(fullName.substring(4,15));

//Arithmetic
  var number1 = 40;
  var number2 = 30;
  var result = number1 +  number2;
  print("Addition: $result");
  result = number1 - number2;
  print("Substraction: $result");
  result = number1 * number2;
  print("Multiplication: $result");
  result = number1 % number2;
  print("Rermainder: $result");
  var result1 = number1 / number2;
  print("Accurate Division: $result1");
  result = number1 ~/number2;
  print("Division: $result");

//Relational
  print("Number 1 is greater than Number 2: ${number1>number2}");
  print("Number 1 is lesser than Number 2: ${number1<number2}");  
  print("Number 1 is greater than eqaul to Number 2: ${number1>=number2}");
  print("Number 1 is lesser than equal Number 2: ${number1<=number2}");
  print("Number 1 is equal to Number 2: ${number1==number2}");
  print("Number 1 is not equal to Number 2: ${number1!=number2}");

//is and is!
  print("Result is String ${result is String}");
  print("Result is not String ${result is! String}");

//Increment and Decrement
  print(number1);
  print("Pre-increment ${++number1}");
  print("Post-increment ${number1++}");
  print(number1);
  print("Pre-decrement ${--number1}");
  print("Post-decrement ${number1--}");
  print(number1);

// Assignment
  number1 += 5;
  print(number1);
  number1 -= 2;
  print(number1);

//Logical
  print(number1 == 30 || number2 != 30);
  print(number1 == 30 || number2 == 30);
  print(number1 != 30 || number2 != 30);
  print(number1 != 30 || number2 == 30);

//Conditional
  print(number1%2 == 0 ? "Even" : "Odd");
  print(number2%2 == 0 ? "Even" : "Odd");

}





