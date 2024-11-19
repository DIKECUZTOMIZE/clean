import 'dart:io';
import 'dart:math';
void main(){

  print('Entere Choise : number:');
  int userChoise=int.parse(stdin.readLineSync().toString());

  int randomN0=  Random().nextInt((100)+1);
  int computerChoise=randomN0;
  print('computer no: $computerChoise');

  if(userChoise > computerChoise){
    print(" high");
  }else if ( userChoise<computerChoise){
    print('law');
  }
  else{
    print('madium');
  }



 }