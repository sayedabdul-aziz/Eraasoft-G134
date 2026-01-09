import 'dart:io';

void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('---');
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
  print('---');

  int j = 1;
  bool isContinue = true;
  do {
    print(j);
    j++;
    // ask user if they want to continue
    print('Do you want to continue?');
    String? response = stdin.readLineSync(); //yes/no
    if (response == 'no') {
      isContinue = false;
    }
  } while (isContinue);
}
