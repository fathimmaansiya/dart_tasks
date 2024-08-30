
// void main() {
//   Map details = {'name': "arun", 'address': "abcd", 'phone': "12345"};

//   print("enter the key value");
//   String k = stdin.readLineSync()!;
//   void check() {
//     if (details.containsKey(k)) {
//        print({details[k]});
//     } else {
//      print("null");
//     }
//   }
//   check();
// }
// Write a Dart function that returns the value associated with a specified key in a map. If the key does not exist, return null.

// Write a Dart function that checks if a specified key exists in a map and returns true or false
// void main(){
//  Map details = {'name': "arun", 'address': "abcd", 'phone': "12345"};
// print("enter the key value");
//   String k = stdin.readLineSync()!;
//   void check(){
//    if (details.containsKey(k)){
//     print("true");}
//     else{
//        print("false");
//     }
//    }
//     check();
//   }

// Write a Dart function that removes a key-value pair from a map by the specified key and returns the updated map.
//   void main(){
//     Map details = {'name': "arun", 'address': "abcd", 'phone': "12345"};
// print("enter the key to remove");
//   String k = stdin.readLineSync()!;
//   void remove(){
//     details.remove(k);
//     print(details);
//   }
//   remove();
//   }

// Write a Dart function that adds a new key-value pair to a given map and returns the updated map
//   void main(){
//   Map details = {'name': "arun", 'address': "abcd", 'phone': "12345"};
//    print("enter the key ");
//   String k = stdin.readLineSync()!;
//    print("enter the value ");
//    String v = stdin.readLineSync()!;
// void add(){
//   if (details.containsKey(k)){
//     print("already have this key");
//   }
//   else{
//     details[k]= v;
//     print(details);
//   }
// }
// add();
// }

// Write a Dart function that creates a map with student names as keys and their scores as values. Print the map
// void createmap(){
//   Map details={};
//   print("enter how many data you add");
//   int num=int.parse(stdin.readLineSync()!);
//   for(int i=1;i<=num;i++){
//          print("enter the student name ");
// String k = stdin.readLineSync()!;
//  print("enter the score ");
//  String v = stdin.readLineSync()!;
//       details[k]=v;
//   }

//        print(details);

// }
// void main(){
//   createmap();
// }

// Write a Dart function that removes duplicate elements from a list and returns the list with unique elements.
// void main(){
//   List<int> mark=[22,45,66,93,22,14,87,45,54,83,10,100,35];
//   print(mark);
//   print(Remove().removeduplicate(mark));
// }
// class Remove{
//   List<int> removeduplicate(List<int> mark){
//     return mark.toSet().toList();
//   }
// }

// // Write a Dart function that returns the index of the first occurrence of a specified element in a list. If the element is not found, return -1.
// void main(){
//       List name=["anu","ajith","fathima",];

//       void index(){
//       // name.indexOf("ammu");
//       print( name.indexOf("ammu"));
//       }
//       index();
// }

//         Write a Dart function that converts a list of integers to a single string with elements separated by commas.
//  void main(){
//   List<int> score=[11,45,78,40,5,39,67];
//   void convToString(){
//     String mark= score.toString().replaceFirst("[", "").replaceFirst("]", "");
//     // "[11,45,78,40,5,39,67]"
//  print(mark)  ;

//   }
//   convToString();
//  }

// void main() {
//   int number = 1;
//   for (int i = 1; i <= 5; i++) {
//     for (int j = 0; j < i; j++) {

//       stdout.write("$number ");

//       number++;
//     }
//     print("");
//   }
// }

// class PascalsTriangle {
//   int f(int n) {
//     int factorial = 1;
//     for (int i = 1; i < n + 1; i++) {
//       factorial *= i;
//     }
//     return factorial;
//   }
//   List<List<int>> rows(int n) {
//     List<List<int>> triangle = [];
//     if (n == 0) {
//       return triangle;
//     }
//     for (int i = 0; i < n; i++) {
//       List<int> row = [];
//       for (int j = 0; j < i + 1; j++) {
//         row.add((f(i) ~/ ((f(j) * f(i - j)))));
//       }
//       triangle.add(row);
//     }
//     return triangle;
//   }
// }
// void main() {
//   PascalsTriangle pascalTrangle = PascalsTriangle();
//   var pascal = pascalTrangle.rows(4);
//   print(pascal);
// }

// //  Write a Dart function that takes a list of integers and returns a new list containing only the even numbers.
// class Evennumber {
//   List<int> convertToEve(List<int> listOfNum) {
//     List<int> evenNUmber = [];
//     for (var i in listOfNum) {
//       if (i % 2 == 0) {
//         evenNUmber.add(i);
//       }
//     }
//     return evenNUmber;
//   }
// }

// void main() {
//   Evennumber obj1=Evennumber();
//   print(obj1.convertToEve([2,4,68,99,3,6,]));
 
// }

// Write a Dart function that takes a list of integers and returns a new list containing the squares of each element.
// class Square {
//   List<int> convertToSqrt(List<int> listOfNum) {
//     List<int> squareOfNum = [];
//     for (var i in listOfNum) {
//       // i*i;
//         squareOfNum.add(i*i);
      
//     }
//     return squareOfNum;
//   }
// }

// void main() {
//   Square obj1=Square();
//   print(obj1.convertToSqrt([2,4,68,99,3,6,]));
 
// }

// Write a Dart function that returns the length of a given list.
// void main(){
//   List num=[2,44,66,39];
//     print('The length of the list is: ${lenghtList(num)}');
// }
// int lenghtList(List num){
//  return num.length;
// }


// Write a Dart function that adds an element to the end of a list and returns the updated list.
// void main(){
//   List<int> num=[2,66,87,4,36];
  
//   print(addElement(num ,45));
// }
// List<int> addElement(List<int> listToAdd, int num){
//   // List<int> update=[];
//    listToAdd. insert(0, num);
// //  listToAdd.add(num);
//   return listToAdd;
// }


// Write a Dart function that removes the first occurrence of a specified element from a list.


// void removeFirstOccurrence(List<int> numbers, dynamic element) {
//   numbers.remove(element);
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 2, 5];
//   print('Original list: $numbers');
//   int element;
//   removeFirstOccurrence(numbers, 2);
//   print('List after removing first occurrence of 2: $numbers');
// }


// Write a Dart function that checks if a list contains a specified element and returns true or false.

// bool containsElement(List<int> numbers, int elementToFind) {

//   return numbers.contains(elementToFind);
//   // return list.contains(element);
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5];
//   int elementToFind = 3;

//   bool result = containsElement(numbers, elementToFind);
//   print(result); // Output: true
// }


// Write a Dart function that returns the sum of all elements in a list of integers

// void main(){
//   List num=[2,4,7,8,4,5,10];
//   print(addelements(num));
// }
// int addelements(List num){
//   int sum=0;
//   for (int i in num) {
//    sum+=i;
//   }
//   return sum;
// }

// Write a Dart function that returns the maximum element in a list of integers.
// void main(){
// List num=[5,3,7,8,9,77]; 
// print(maximumNumber(num));
// }
// int maximumNumber(List num){
// int max=num[0];
// for(int i in num){
// if(i>max){
// max=i;
// }
// }
// return max;
// }


// Write a Dart function that returns the minimum element in a list of integers.
//  void main(){
// List num=[5,3,7,8,9,77]; 
// print(minimumNumber(num));
// }
// int minimumNumber(List num){
// int min=num[0];
// for(int i in num){
// if(i<min){
// min=i;
// }
// }
// return min;
// }


// Write a Dart function that reverses a list of integers and returns the reversed list
// void main(){
//   List num=[2,5,8,9,50,3];
//   List reversedList=reverseOfList(num);
//   print(reversedList);
// }
// List reverseOfList( num){
//  return num.reversed.toList();
// }



// Write a Dart function that sorts a list of integers in ascending order.
// void main(){
//   List num=[3,8,9,5,77,23,1];
//   ascendingOrder(num);
//   print(num);
// }
// void ascendingOrder(List num){
// num.sort();
// }


// Write a Dart function that takes an integer and returns its factorial.
// import 'dart:io';

// void main(){
//   print("enter the number");
//   int input=int.parse(stdin.readLineSync()!);
//   print("factorial is ${fact(input)}" );
// }
// int fact(int n){
//   if (n != 1) {
//     return n*fact(n-1);
//   }else{
//     return 1;
//   }
// }

// ------------------------------------------algorithm----------------------------------------------------------------

// Write a Dart function that takes a list of integers and returns a new list with each element doubled.

// void main(){
//   List num=[2,4,6,8,9];
//   print("${convertDouble(num)}");
// }
// List convertDouble(List numbers){
//    return numbers.map((number) => number * 2).toList();
// }

// // Write a Dart function that takes two sets and returns their intersection.
// void main(){
//   Set num1={3,5,7,9,2,4};
//   Set num2={3,55,7,88,2,1,4};
//  print("${Intresection(num1, num2)}");
// }
// Set Intresection(Set num1,Set num2){
//   return num1.intersection(num2);
// }

// Write a Dart function that takes a map of student names and scores and returns the name of the student with the highest score.

// 
// String getTopStudent(Map<String, int> scores) {
//   if (scores.isEmpty) {
//     return 'No students available';
//   }

//   // Find the entry with the highest score
//   var topStudent = scores.entries.reduce((a, b) => a.value > b.value ? a : b);

//   return topStudent.key;
// }

// void main() {
//   var studentScores = {
//     'Alice': 85,
//     'Bob': 92,
//     'Charlie': 88,
//     'Diana': 95
//   };

//   print('Top student: ${getTopStudent(studentScores)}'); // Output: Top student: Diana
// }