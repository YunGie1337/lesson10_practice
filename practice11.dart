import 'dart:io';
import 'dart:math';

void main() {
  //* task 1

  // int randomNum = Random().nextInt(100);
  // int randomNumX = Random().nextInt(20);
  // print(randomNum);
  // print(randomNumX);
  // print(randomNum + randomNumX);

  //* task 2

  // List num_massive = [];

  // int randLen = 1 + Random().nextInt(10 - 1);
  // print(randLen);
  // for (int i = 1; i <= randLen; i++) {
  //   num_massive.add(Random().nextInt(1100000000));
  // }
  // print(num_massive);

  //* task 3

  // int x = 4;
  // List random = List.generate(10, (index) => Random().nextInt(6));
  // for (int i = 0; i < random.length; i++) {
  //   if (x == random[i]) {
  //     print(i);
  //   }
  // }
  // print(random);

  //* task 4
  bool isTrue = false;
  int max = 100;
  List random1 = List.generate(100, (index) => 50 + Random().nextInt(max - 50));
  for (int i = 1; i < random1.length; i++) {
    if (random1[i] == random1[i - 1]) {
      isTrue = true;

      print(i);
    }
  }
  print(random1);
  print(isTrue ? "Дубликаты есть " : "Дубликатов нет");
}
