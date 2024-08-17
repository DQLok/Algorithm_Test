import 'dart:math';

class Algorithm {
  static void maxMinSum() {
    //init
    List<int> listNumbers = [];
    const int size = 5;
    const int maxRank = 100;
    var random = Random();

    //create list
    for (var i = 0; i < size; i++) {
      int value = random.nextInt(maxRank);
      if (listNumbers.every((element) => element != value)) {
        listNumbers.add(value);
      }
    }
    //sort
    listNumbers.sort(
      (a, b) => a.compareTo(b),
    );
    //4 first numbers, 4 last numbers
    int minSum = listNumbers.sublist(0, 4).reduce(
          (value, element) => value + element,
        );
    int maxSum = listNumbers.sublist(1).reduce(
          (value, element) => value + element,
        );
    var oddList = listNumbers.where(
      (element) => element % 2 != 0,
    );
    var evenList = listNumbers.where(
      (element) => element % 2 == 0,
    );
    int sumTotal = listNumbers.reduce(
      (value, element) => value + element,
    );
    print("===============================\n"
        "Simple input: \n${listNumbers.toString()} \nSimple output: \n$minSum $maxSum\n"
        "****BONUS****\n"
        "Count total: $sumTotal\n"
        "min=${listNumbers.first}, max=${listNumbers.last} \n"
        "odd: $oddList, even $evenList\n"
        "**************\n"
        "Our initial numbers are ${listNumbers.toString()}. We can calculate the following sums using four of the five integers:\n");
    //sum when removing each element
    for (var i = 0; i < listNumbers.length; i++) {
      List<int> child = listNumbers.sublist(0, i) +
          listNumbers.sublist(i + 1, listNumbers.length);
      int sum = child.reduce((value, element) => value + element);
      print(
          "${i + 1}: If we sum everything except ${listNumbers.elementAt(i)}, our sum is: ${child.join(" + ")} = $sum");
    }
  }
}
