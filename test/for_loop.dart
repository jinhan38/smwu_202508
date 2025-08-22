class ForLoop {
  ForLoop() {
    normalForLoop();
    enhancedForLoop();
    forEachForLoop();
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
}
