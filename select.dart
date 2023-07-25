

void main(){

  List<int> unsortedList = [4, 8, 3, 2, 45, 12, 5, 87, 11, 55, 41, 1, 17, 5, 9, 0];

  for(int i = 0; i < unsortedList.length - 1; i++){

    int index_min = i;
    
    for(int j = i + 1; j < unsortedList.length; j++){
      if(unsortedList[j] < unsortedList[index_min])
        index_min = j;
    }
    
    if(i != index_min){
      int temp = unsortedList[i];
      unsortedList[i] = unsortedList[index_min];
      unsortedList[index_min] = temp;
    }
    
  }
  
  print('Sorted list is : ${unsortedList}');
}