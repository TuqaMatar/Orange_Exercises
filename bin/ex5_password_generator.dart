import 'dart:math';
import 'dart:io';
String generate_weak_password(){
  final List<String> weak_passWords = ["password123" , "mybirthday1999","thispassisSuperWeak","mySonsName12"];
  Random random = new Random() ; 
  return weak_passWords[random.nextInt(weak_passWords.length)]; 
}
String generate_strong_password() {
  final List<String> strOrInt = ['String', 'Int'];
  const String availableChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  Random random = new Random();
  String passWord = "";
  int strOrIntIndex = 0;

  for (int i = 0; i < 8; i++) {
    strOrIntIndex = random.nextInt(1);
    if (strOrIntIndex == 0) {
      passWord =
          passWord + availableChars[random.nextInt(availableChars.length)];
    } else {
      passWord = passWord + random.nextInt(10).toString();
    }
  }
  return passWord;
}

String generate_password(String strength){
  String passWord = ""; 
  if(strength =="W"){
    passWord = generate_weak_password();
  }else{
    passWord = generate_strong_password();
  }
  return passWord ;
}
void main() {
  int generatePass;
  String generated_passWord="";
  String choice = "";
  while (true) {
    print("Type S for a Strong Password or W for a weak password and Q to quit ");
    choice = stdin.readLineSync().toString();
    if (choice == 'Q') {
      break;
    } else if(choice == 'S' || choice == 'W')
      {
        generated_passWord = generate_password(choice);
         print(generated_passWord);
      }
      else {
        print ("not a valid choice , please try again");

      }

     
  }
}
