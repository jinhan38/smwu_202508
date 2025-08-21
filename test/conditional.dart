class Conditional {
  void simpleIf() {
    int age = 30;
    bool check = false;
    if (age < 20) {
      print('Conditional.simpleIf 미성년자');
    } else {
      print('Conditional.simpleIf 성인');
    }
  }

  void simpleSwitch() {
    int age = 30;

    switch (age) {
      case 10:
        print('10');

        break;
      case 20:
        print('20');

        break;
      case 30:
        print('30');

        break;
      case 40:
        print('40');

        break;
      default:
        print('default');
        break;
    }
  }

  // String practiceIf(int score) {
  //   String grade = "F";
  //   if (score >= 90) {
  //     grade = "A";
  //   } else if (score >= 80) {
  //     grade = "B";
  //   } else if (score >= 70) {
  //     grade = "C";
  //   } else if (score >= 60) {
  //     grade = "D";
  //   }
  //   return grade;
  // }

  // String practiceIf(int score) {
  //   if (score >= 90) {
  //     return "A";
  //   } else if (score >= 80) {
  //     return "B";
  //   } else if (score >= 70) {
  //     return "C";
  //   } else if (score >= 60) {
  //     return "D";
  //   } else{
  //     return "F";
  //   }
  //   // return "F";
  // }

  String practiceIf(int score) {
    if (score >= 90) return "A";
    if (score >= 80) return "B";
    if (score >= 70) return "C";
    if (score >= 60) return "D";
    return "F";
  }

  String practiceSwitch(int score) {
    // score에서 10을 나누고 정수를 반환
    // ex) score = 90 => score ~/ 10 = 9
    // ex) score = 85 => score ~/ 10 = 8
    int value = score ~/ 10;
    switch (value) {
      case 9:
        return "A";
      case 8:
        return "B";
      case 7:
        return "C";
      case 6:
        return "D";
    }
    return "F";
  }
}
