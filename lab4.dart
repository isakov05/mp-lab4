
// //task 1.2
// class Book {
//   String title;
//   String author;
//   int numberOfPages;

//   Book(this.title, this.author, this.numberOfPages);

//   void displayInfo(){
//     print('My book info: $title, $author, $numberOfPages');
//   }
// }

// void main() {
//   var myBook = Book('King Arthur', 'Merlin', 350);
//   myBook.displayInfo();
// }



// //task 1.3
// class Student {
//   String name;
//   int age;
//   List<double> grades;

//   Student(this.name, this.age, this.grades);

//   double calculateAverageGrade() {
//     if (grades.isEmpty){
//       return 0.0;
//     }
//     double sum = grades.reduce((a, b) => a + b);
//     return sum / grades.length;
//   }
// }

// void main() {
//   var student = Student('Atabek', 20, [85.7, 92.3, 78.5]);
//   print(student.calculateAverageGrade());
// }


// //task 1.4

// class BankAccount{
//   String accountNumber;
//   String accountHolderName;
//   double balance;

//   BankAccount(this.accountNumber, this.accountHolderName, this.balance);

//   void deposit(double amount){
//     if (amount < 0){
//       return;
//     }
//     balance += amount;
//   }
//   void withdraw(double amount){
//     if (amount<=0) return;
//     if (balance - amount <0){
//       print("insufficient funds");
//       return;
//     }
//     balance -=amount;
//   }

//   void displayInfo(){
//     print("Information: $accountHolderName, $accountNumber, $balance");
//   }
// }

// void main() {
//   var acc = BankAccount('123456789', 'Alice', 100.0);
//   acc.displayInfo();
//   acc.deposit(50.0);
//   acc.displayInfo();
//   acc.withdraw(30.0);
//   acc.displayInfo();
//   acc.withdraw(150.0);
//   acc.displayInfo();
// }


// //task 1.5
// class Rectangle {
//   double width;
//   double height;

//   Rectangle(this.width, this.height);

//   double get area => width * height;
//   double get perimeter => 2 * (width + height);
// }

// void main() {
//   var r = Rectangle(5.0, 3.0);
//   print(r.area);
//   print(r.perimeter);
// }


// //task 2.2
// enum OrderStatus{ 
//   pending, 
//   processing, 
//   shipped, 
//   delivered, 
//   cancelled 
// }
// void main() {
//   var status = OrderStatus.shipped;
//   print(status);
// }

// //task 2.3
// enum TrafficLight{
//   red,
//   yellow,
//   green
// }
// void checkLight(TrafficLight light) {
//   switch (light) {
//     case TrafficLight.red:
//       print('Stop');
//       break;
//     case TrafficLight.yellow:
//       print('Caution');
//       break;
//     case TrafficLight.green:
//       print('Go');
//       break;
//   }
// }
// void main() {
//   checkLight(TrafficLight.red);
//   checkLight(TrafficLight.yellow);
//   checkLight(TrafficLight.green);
// }

// //task 2.4
// enum UserRole{
//   admin,
//   editor,
//   guest
// }
// class User{
//   String name;
//   UserRole role;

//   User(this.name, this.role);

//   bool hasEditPermission(){
//     return role == UserRole.admin || role == UserRole.editor;
//   }
// }

// void main() {
//   var u1 = User('Alice', UserRole.admin);
//   var u2 = User('Bob', UserRole.guest);
//   print(u1.hasEditPermission());
//   print(u2.hasEditPermission());
// }

// //task 2.5
// enum TrafficLight{
//   red(30),
//   yellow(5),
//   green(45);

//   final int durationInSeconds;
//   const TrafficLight(this.durationInSeconds);
// }
// void checkLight(TrafficLight light) {
//   switch (light) {
//     case TrafficLight.red:
//       print('Stop');
//       break;
//     case TrafficLight.yellow:
//       print('Caution');
//       break;
//     case TrafficLight.green:
//       print('Go');
//       break;
//   }
// }
// void main() {
//   for (var check in TrafficLight.values){
//     print('${check.name}: ${check.durationInSeconds}');
//   }
// }


// //task 3.2
// class Animal{
//   void makeSound(){
//   }
// }
// class Dog extends Animal{
//   @override
//   void makeSound(){
//     print("Woof");
//   }
// }
// class Cat extends Animal{
//   @override
//   void makeSound(){
//     print("Meow");
//   }
// }
// void main() {
//   var d = Dog();
//   var c = Cat();
//   d.makeSound();
//   c.makeSound();
// }


// //task 3.3
// class Shape {
//   String color;
//   Shape(this.color);
// }

// class Circle extends Shape {
//   double radius;
//   Circle(String color, this.radius) : super(color);
// }

// class Square extends Shape {
//   double sideLength;
//   Square(String color, this.sideLength) : super(color);
// }

// void main() {
//   var c = Circle('red', 5.0);
//   var s = Square('blue', 4.0);
//   print('${c.color} circle, radius ${c.radius}');
//   print('${s.color} square, side ${s.sideLength}');
// }


// //task 3.4
// class Employee {
//   String name;
//   double baseSalary;

//   Employee(this.name, this.baseSalary);

//   double calculateSalary() => baseSalary;
// }

// class Manager extends Employee {
//   double bonus;
//   Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

//   @override
//   double calculateSalary(){
//     baseSalary + bonus;
//     }
// }

// void main() {
//   var e = Employee('Alice', 1000);
//   var m = Manager('Bob', 1200, 500);
//   print(e.calculateSalary());
//   print(m.calculateSalary());
// }

// //task 3.5
// class LibraryItem {
//   String title;
//   int id;
//   LibraryItem(this.title, this.id);

//   String getDetails() => 'Title: $title, ID: $id';
// }

// class Book extends LibraryItem {
//   String author;
//   Book(String title, int id, this.author) : super(title, id);

//   @override
//   String getDetails() => '${super.getDetails()}, Author: $author';
// }

// class DVD extends LibraryItem {
//   String director;
//   DVD(String title, int id, this.director) : super(title, id);

//   @override
//   String getDetails() => '${super.getDetails()}, Director: $director';
// }

// void main() {
//   var b = Book('Dart Guide', 1, 'Alice');
//   var d = DVD('Movie X', 2, 'Bob');
//   print(b.getDetails());
//   print(d.getDetails());
// }

// //task 4.2
// mixin Flyer {
//   void fly() => print('Taking off!');
// }
// class Bird with Flyer {}
// class Plane with Flyer {}
// void main() {
//   Bird().fly();
//   Plane().fly();
// }

// //task 4.3
// mixin Logger {
//   void log(String message) => print('[LOG] $message');
// }
// class DataService with Logger {
//   void fetch() => log('Fetching data');
// }
// void main() {
//   DataService().fetch();
// }

// //task 4.4
// mixin Validator {
//   bool isEmailValid(String email) => email.contains('@');
//   bool isPasswordStrong(String password) => password.length > 8;
// }
// class UserSignup with Validator {}
// void main() {
//   var u = UserSignup();
//   print(u.isEmailValid('test@mail.com'));
//   print(u.isPasswordStrong('123456789'));
// }

// //task 4.5
// mixin Performer {
//   void perform() => print('Performing');
// }

// mixin Musician {
//   void playInstrument() => print('Playing instrument');
// }

// class Artist {}
// class Dancer extends Artist with Performer {}
// class Guitarist extends Artist with Performer, Musician {}
// void main() {
//   Dancer().perform();
//   Guitarist()
//     ..perform()
//     ..playInstrument();
// }

//task 5.2
// class Weapon {
//   void action() {}
// }
// class Sword extends Weapon {
//   @override
//   void action() => print('Swinging!');
// }
// class Bow extends Weapon {
//   @override
//   void action() => print('Firing!');
// }
// void main() {
//   var weapons = [Sword(), Bow()];
//   for (var w in weapons) {
//     w.action();
//   }
// }

// //task 5.3
// class Animal {
//   void eat() {}
// }
// class Lion extends Animal {
//   @override
//   void eat() => print('Eating meat.');
// }
// class Goat extends Animal {
//   @override
//   void eat() => print('Eating grass.');
// }
// void feed(Animal a) => a.eat();
// void main() {
//   feed(Lion());
//   feed(Goat());
// }


// //task 5.4
// abstract class PaymentMethod {
//   void pay(double amount);
// }
// class CreditCard extends PaymentMethod {
//   @override
//   void pay(double amount) => print('Paid $amount with Credit Card');
// }
// class PayPal extends PaymentMethod {
//   @override
//   void pay(double amount) => print('Paid $amount with PayPal');
// }
// void processPayment(PaymentMethod method, double amount) {
//   method.pay(amount);
// }
// void main() {
//   processPayment(CreditCard(), 100.0);
//   processPayment(PayPal(), 200.0);
// }

// //task 5.5
// abstract class DataFormatter {
//   String format(Map<String, dynamic> data);
// }

// class JSONFormatter extends DataFormatter {
//   @override
//   String format(Map<String, dynamic> data) => data.toString();
// }

// class KeyValueFormatter extends DataFormatter {
//   @override
//   String format(Map<String, dynamic> data) =>
//       data.entries.map((e) => '${e.key}: ${e.value}').join('\n');
// }

// void main() {
//   var data = {'name': 'Alice', 'age': 25};
//   var formatters = [JSONFormatter(), KeyValueFormatter()];
//   for (var f in formatters) {
//     print(f.format(data));
//   }
// }


// //task 6.2
// Future<String> generateReport() {
//   return Future.delayed(Duration(seconds: 1), () => 'Report generated!');
// }

// void main() {
//   generateReport().then((result) => print(result));
// }


// //task 6.3
// Future<String> generateReport() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'Report generated!';
// }

// void main() async {
//   var result = await generateReport();
//   print(result);
// }


// //task 6.4
// Future<int> fetchUserId() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 123;
// }
// Future<String> fetchUserDetails(int id) async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'User with ID $id is Alice';
// }
// void main() async {
//   var id = await fetchUserId();
//   var details = await fetchUserDetails(id);
//   print(details);
// }

// //task 6.5
// Future<String> fetchConfiguration() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'Config loaded';
// }

// Future<String> loadResources() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Resources loaded';
// }
// void main() async {
//   var results = await Future.wait([fetchConfiguration(), loadResources()]);
//   print(results);
//   print('System Ready');
// }

// //task 7.2
// void printElement(List list, int index) {
//   try {
//     print(list[index]);
//   } on RangeError {
//     print('Error: Invalid index.');
//   }
// }

// void main() {
//   var nums = [1, 2, 3];
//   printElement(nums, 1);
//   printElement(nums, 5);
// }

// //task 7.3
// void main() {
//   String input = 'abc';
//   try {
//     int age = int.parse(input);
//     print(age);
//   } on FormatException {
//     print('Error: Invalid number format');
//   }
// }

// //task 7.4
// class InvalidInputException implements Exception {
//   String message;
//   InvalidInputException(this.message);
//   @override
//   String toString() => message;
// }
// void processText(String text) {
//   if (text.isEmpty) throw InvalidInputException('Input cannot be empty');
//   print(text);
// }
// void main() {
//   try {
//     processText('');
//   } on InvalidInputException catch (e) {
//     print('Error: $e');
//   }
// }

// //task 7.5
// void readDatabase() {
//   try {
//     print('Reading data...');
//     throw Exception('Database error');
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     print('Database connection closed.');
//   }
// }
// void main() {
//   readDatabase();
// }