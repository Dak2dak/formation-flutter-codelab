
// void main(){

//   List<String> sports = ['cricket', 'football', 'tennis', 'baseball'];
//   List<String> drinks = ["water", "juice", "milk", "coke"];
//   var myList = <int>[1, 8, 12, 20, 55]; 

//   print(myList.sublist(3));
//   myList.shuffle();
//   print(myList);
//   print(myList.reversed.toList());
//   print(sports.asMap());
//   print("List in reverse: ${drinks.reversed}");
//   print("List in reverse: ${drinks.reversed.toList()}");

// } 

void main(){
  List<int> board = [1, 15, 21, 0, 3, 11, 25, 14, 17, 2, 5, 33, 4, 7, 19, 27, 8, 100, 42];
  print('${ascendentOrder(board)}');
  // print('${descendentOrder(board)}');
  
}


List<int> ascendentOrder(board){
  for (int i = 0; i < board.length; i++){
    for (int j = 0; j < i; j++){
      //print('${board[i]} & ${board[j]}');
      if (board[i] < board[j]){
        int aux = board[j];
        board[j] = board[i];
        board[i] = aux;
      }
    }
  }
    
  return board;
}

List<int> descendentOrder(board){
  for (int i = 0; i < board.length; i++){
    for (int j = 0; j < i; j++){
      if (board[i] > board[j]){
        int aux = board[j];
        board[j] = board[i];
        board[i] = aux;
      }
    }
  }
    
  return board;
}