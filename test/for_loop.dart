class ForLoop {
  ForLoop() {
    normalForLoop();
    enhancedForLoop();
    forEachForLoop();
    practice();
  }

  void normalForLoop() {
    for (int i = 0; i < 5; i++) {
      print("normal for index : $i");
    }

    List<int> ageList = [30, 10, 23, 55, 36, 77, 31];
    for (int i = 0; i < ageList.length; i++) {
      print('ageList index : $i, value : ${ageList[i]}');
    }
  }

  void enhancedForLoop() {
    List<int> ageList = [30, 10, 23, 55, 36, 77, 31];
    for (int value in ageList) {
      print('enhancedForLoop $value');
    }
  }

  void forEachForLoop() {
    List<int> ageList = [30, 10, 23, 55, 36, 77, 31];
    ageList.forEach((element) {
      print('forEachForLoop : $element');
    });
  }

  void practice() {
    List<double> values = [10.3, 20.1, 25.5, 36.7, 40.8, 56];

    for (int i = 0; i < values.length; i++) {
      print('practice normal : ${values[i]}');
    }

    for (var value in values) {
      print('practice enhanced : $value');
    }

    values.forEach((element) {
      print('practice forEach : $element');
    });
  }
}
