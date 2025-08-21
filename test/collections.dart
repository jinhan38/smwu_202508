class Collections {
  /// List, Map, Set

  void listAdd() {
    List<int> listInt = [];
    listInt.add(1);
    listInt.add(2);
    listInt.add(3);
    listInt.addAll([4, 5, 6, 7, 8]);
    listInt.insert(0, 50);
    print(listInt);

  }
}
