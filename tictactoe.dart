import 'dart:io';

void main(){

    stdout.write('Enter the number of line for to draw a board : ');
    int line = int.parse(stdin.readLineSync()!);
    stdout.write('Down below you have your ${line} x ${line} board : \n');

    lineDrawer(line);

}



void lineDrawer (int a){

    String horizontalLine = ' ---';
    String verticalLine = '|   ';

    for(int i = 0; i < a; i++){
      print(horizontalLine * a);
      print(verticalLine * (a + 1));
    }

    print(horizontalLine * a);
}



