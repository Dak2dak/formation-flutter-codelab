import 'dart:io';
import 'dart:math';

void main (){
  // exo1();
  // exo2();
  //exo3();
  exo4();
  // exo5();
  // exo6();
  // exo7();
  //exo8();
  // exo9();
  // exo10();
}

void exo1 () {
  // print('Enter your name : ');
  stdout.write('Enter your name : ');
  var name = stdin.readLineSync();
  stdout.write('Then enter your age : ');
  var s = stdin.readLineSync();
  if (s != null) {
    int age = int.parse(s);
    int rest = 100 - age;
    print('Dear $name, in exacty $rest years, you will be 100.');
  }
}

/* ======================================================================================== */
void exo2 (){
  stdout.write('Give a random number : ');
  var numb = stdin.readLineSync();
  
  if(numb != null){
    int n = int.parse(numb);
    if(n % 2 == 0) 
      print('The number you provided is an even number.');
    else 
      print('it\'s an odd one.');
  }
}

/* ======================================================================================== */
void exo3 (){
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for(int i = 0; i <= 10; i++){
    if(a[i] < 5) 
      print(a[i]);
  }
}

/* ======================================================================================== */
void exo4 (){
  stdout.write('Give a random number : ');
  int nombre = int.parse(stdin.readLineSync()!);;
    if(nombre == 0)
      print('Tout nombre entier non nul est diviseur de 0.');
    else 
      for(int i = 1; i <= nombre; i++){
        int res = nombre % i;
        if(res == 0)
          print(i);
      }
}

/* ======================================================================================== */
void exo5 (){
  List<int> list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89], list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  
  // 1. Supprimer les doublons des deux listes.
  List<int> list_1 = list1.toSet().toList(); //toSet Creates a Set with the same elements and behavior as this Set.
  List<int> list_2 = list2.toSet().toList(); //toList Creates a List containing the elements of this List.
  
  // 2. identifier la liste de length max
  List<int> list_length_max = [];
  List<int> list_length_min = [];

  int m = max(list1.length, list2.length);
  if(list1.length == m){
    list_length_max = list_1;
    list_length_min = list_2;
  }
  else {
    list_length_max = list_2;
    list_length_min = list_1;
  }
  // 3. Supprimer les éléments de la liste se trouvant dans l'autre
  list_length_max.removeWhere((elt) => !list_length_min.contains(elt));

  // 4. Ordonner la liste
  int aux;
  for(int i = 0; i < list_length_max.length - 1; i++){
    if(list_length_max[i] > list_length_max[i+1]){
      aux = list_length_max[i];
      list_length_max[i] = list_length_max[i+1];
      list_length_max[i+1] = aux;
    }
  }
  // 5. Afficher la liste définitive.
  print(list_length_max);
}
// I know this is too long. I'll later look for a way to make short.

/* ======================================================================================== */
void exo6 (){
  stdout.write('Give a random word : ');
  var word = stdin.readLineSync();
  if(word != null){
    var splittedWord = word.split('').reversed.join();
    //print(splittedWord);
    if(splittedWord == word)
      print('Oh waoooo, the word you provided is a palindrome !');
    else
      print('This is not a palindrome. Thank you !');
  }
}

/* ======================================================================================== */
void exo7 (){
  var list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  list.removeWhere((element) => !(element % 2 == 0));
  print(list);
}

/* ======================================================================================== */
void exo8 (){
  var randomNumber = Random().nextInt(100) + 1;
  //print(randomNumber);
  stdout.write('Guess the number I just generated : ');
  var userGuess = stdin.readLineSync();
  if(userGuess != null){
    int guess = int.parse(userGuess);
    if((guess < randomNumber) && (guess - randomNumber).abs() < 20)
      print('You guessed too low.');
    else if((guess > randomNumber) && (guess - randomNumber).abs() > 20)
          print('You guessed too high.');
        else 
          print('You guessed the exact same number I generated');
  }
}

/* ======================================================================================== */
void exo9 (){
  
}

/* ======================================================================================== */
List<int> removeDuplicates (List<int> a){
  return a.toSet().toList();
}

void exo10 (){
  var b = [1, 2, 2, 5, 10, 3, 13, 22, 22, 1, 45];
  print(removeDuplicates(b));
}



/* ======================================================================================== */
void exo11 (){
  int number = Random().nextInt(100);
  print(number);
  stdout.write('Guess the random number I generated [1, 100]: ');
  var guessedNumber = stdin.readLineSync();
  if(guessedNumber != null){
    int userGuess = int.parse(guessedNumber);
    if(userGuess == number){
      print('You got it correct ! Congrats !');
    }
    else {
      print('Wrong guess, try again.');
    }
  }
}

