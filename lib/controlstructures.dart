// ignore_for_file: curly_braces_in_flow_control_structures

void main(){

//Control Structures
  var salary = 15000;

//Ternary Operator
  salary > 12000 ? print("Promotion") : print("Work Hard");

//If-else logic
  if(salary > 20000)
    print("Promotion");
  else
    print("Work Hard");

//If-else if- else ladder
    var marks = 70;
    if (marks >= 90 && marks < 100)
      print("A+ grade");
    else if (marks >= 80 && marks < 90) 
      print("A grade");
    else if (marks >= 70 && marks < 80) 
      print("B grade");
    else if (marks >= 60 && marks < 70) 
      print("C grade");
    else if (marks >= 50 && marks < 60) 
      print("D grade");
    else if (marks >= 0 && marks < 40) 
      print("You failed");
    else 
      print("You were absent in exam");

//Switch Case
  var grade = "A";
  switch (grade) {
    case "A":
      print("Excellent!");
    case "B":
      print("Good job!");
    case "C":
      print("Keep improving.");
    default:
      print("You can do better.");
  }

//While loop
  int count1 = 0;
  while(count1 < 5){
    print("Counter1 : $count1");
    count1 ++;
  }

//do-while loop

  int count2 = 0;
  do{
    print("Counter2: $count2");
    count2++;
  }while(count2<5);

//for loop
  for(int index = 0; index < 5; index++){
    print("Index: $index");
  }

//break and continue
  for (int i = 0; i < 5; i++) {
  if (i == 3) {
    break; 
  }
  if (i == 1) {
    continue; 
  }
  print("Index: $i");
}

//for-loop but components are optional
  int index2 = 0;
  for(;;){
    if(index2 > 5) break;
    print("Index2: $index2");
    index2++;
  }

//for in loop
  List numbers = [1,2,3,4];
  for(int number in numbers){
    print("Number: $number");
  }

  // ignore: avoid_function_literals_in_foreach_calls
  numbers.forEach((number){
    print("Number2: $number");
  });


  print("Exited");
 
}