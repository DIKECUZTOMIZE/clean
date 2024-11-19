
import 'dart:io';
import 'dart:math';

void main() {
  print('Enter Choise: Rock, Paper , Scissior:');

  String userChoise = stdin.readLineSync().toString();

  if ((userChoise == 'Rock') || (userChoise == 'Paper') || (userChoise == 'Scissior')) {{

    List<String>option = ['Rock', 'Paper', 'Scissior'];

    int randomIndex = Random().nextInt(option.length);
    String computerChoise = option[randomIndex];
    print('userChoise: $userChoise, computerChoise : $computerChoise');



    if((userChoise=='Rock'&& computerChoise=='Scissior')||(userChoise=='Paper'&& computerChoise=='Rock')||
        (userChoise =='Scissior' && computerChoise=='Paper')){
      print('User win');
    }
    else if((computerChoise=='Rock'&& userChoise=='Scissior')||(computerChoise=='Scissior'&&
  userChoise=='Paper')|| (computerChoise=="Paper"&&userChoise=='Rock')){
  print('Computer win');
  }
    else(
      print('Draw')
      );
  }

  }
  else{
    print('Invilade');

  }
}
