import 'dart:math';

void main(){
  // Nº 10
// Person person = Person();
//     person.setName("Mark");
//     print(person.name);

/* ========================================== */
  // Nº 9
//DataProvider().myMethod();

/* ========================================== */
  // Nº 8
// Try to solve the error using type promotion
// Object name = "Mark";
// if(name is String){
//   print("The length of name is ${name.length}");
// }
/* ========================================== */
// Nº 7
// String? name;
// if(name is String){
//   String name1 = name;
//   print(name1);
// }
/* ========================================== */
// Nº 6
  // int? length = findLength("Hello");
  // print("The length of the string is $length");
/* ========================================== */
// Nº 5
// int result = returnNullButSometimesNot()!.abs();
// print(result);
/* ========================================== */
// Nº 4
// print(firstItem);
/* ========================================== */
// Nº 3
// Try to use null assertion operator(!) to print null if the variable is null

// String? name;
// name = null;
// String name1 = name!;
// print(name1);

/* ========================================== */
// Nº 2
// Try to make the type parameter of List nullable

// List<int?> items = [1, 2, null, 4];
// print(items);
/* ========================================== */
// Nº 1
// Try to assign a null value to age variable using ?

int? age;
age = null;
print("Age is $age");

}



// Nº 10 Try to solve the error using late keyword
class Person{
    late String _name;

    void setName(String name){
        _name = name;
    }

    String get name => _name;
}

/* ======================================================================================== */
// Try to solve the error using type promotion
class DataProvider{
    String? get stringorNull => Random().nextBool() ? "Hello" : null;

    void myMethod(){
      String ? value = stringorNull;
        if(value is String){
            print("The length of value is ${value.length}");
        }else{
            print("The value is not a string.");
        }

    }
}

/* ======================================================================================== */
// Nº 6
// Try to use null assertion operator(!) to print the length of the String or return null if the variable is null
int findLength(String? name) {
    // add null assertion operator here
  String name1 = name!;
  return name1.length;
}

/* ======================================================================================== */
// Nº 5
// Try to use null assertion operator(!) to print null if the variable is null
int? returnNullButSometimesNot() {
  return -5;
}

/* ======================================================================================== */
// Nº 4
// Try to use null assertion operator(!) to print null if the variable is null
List<int?> items = [1, 2, null, 4];
int firstItem = items.first!;
/* ======================================================================================== */




