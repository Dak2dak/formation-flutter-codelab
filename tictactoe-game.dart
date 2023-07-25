

List<List<int>> checkingDiagonal(List<List<int>> game){
    if((game[0][0] == game[1][1] && game[0][0] == game[2][2]) && game[0][0] != 0)
      print('Player ${game[0][0]} won');
  return game;
}
// game = [[1, 2, 0], [1, 1, 2], [1, 1, 0]];


List<int> transpo(List<List<int>> game){
    late int tmp;
    List<int> result = [];
    for(int j=0; j < game[0].length; j++){
      for(int k=0; k < game[0].length; k++){
        tmp = game[j][k];
        game[j][k] = game[k][j];
        game[k][j] = tmp;
      }
    }
    for(int j = 0; j < game[0].length; j++){
      result.addAll(game[j]);
    }
    return result;
  }





void main (){
  List<List<int>> game = [[1, 2, 0], [1, 1, 2], [1, 0, 1]];

  // letsStartTheGame(game);
  //transpo(game);
  diagonals(game);
}





void letsStartTheGame(List<List<int>> game){
  
  List<int> players = [1, 2];
  // Le joueur gagne si son chiffre se répète horizontalement
  // ignore: dead_code
  for(int i=0; i < players.length; i++){
    int cpt = 0;
    for(int j=0; j < game[0].length; j++){
      for(int k=0; k < game[0].length; k++){
        if(players[i] == game[j][k])
          cpt++;
      }
      if(cpt == 3){
        print('Winner : ${players[i]}');
        break;
      }
      cpt=0;
    }
    break;
  }


}




List<List<int>> diagonals(List<List<int>> game) {
  List<int> mainDiagonal = [];
  List<int> secondDiagonal = [];
  for (int i = 0; i < game.length; i++){
    mainDiagonal = game[i][i] as List<int>;
  }

  for (int i = 0; i < game.length; i++){
    secondDiagonal = game[i].reversed.toList()[i] as List<int>;
  }

  return [mainDiagonal, secondDiagonal];
}