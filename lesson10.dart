import 'dart:io';

void main() {
  binnarySearch();
}

void binnarySearch() {
  print("Загадайте в уме число от 1 до 128");
  int min = 0;
  int max = 128;
  int mid = (min + max) ~/ 2;
  String answer = "";
  int count = 0;

  while (answer != "yes") {
    count++;
    print('Ваше число $mid?');
    answer = stdin.readLineSync()!;

    if (answer == 'greater') {
      min = mid;
      mid = (mid + max) ~/ 2;
    } else if (answer == 'less') {
      max = mid;
      mid = (min + max) ~/ 2;
    } else if (answer == 'yes') {
      print('Конец игры');
      print("Программа угадала за $count шагов");
    } else {
      print('Введите корректные данные');
      answer = stdin.readLineSync()!;
    }
  }
}
