

void main(){
  List<int> unsortedList = [5, 12, 3, 22, 1, 17, 45, 2, 11, 99, 0];
  List<int> sortedList = []; //Empty list, later sorted list.

  int n = unsortedList.length;
  int min = unsortedList[0];

  for(int j = 0; j < n-1; j++){
      int i = j+1;
      print('j = ${j}');
      print('i = ${i}');
    
      do{
        if(unsortedList[i] < min)
          min = unsortedList[i];
          i++;
      print('in the loop : i = ${i}');
      }
      while(i < n);
      i = 0;
      sortedList.add(min);
      unsortedList.remove(min);
      print(unsortedList);
  }

  print(sortedList);
}

// ne fonctionne pas
