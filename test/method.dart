class Method {

  Method() {
    int age = add();
    print(age);

    double calcResult = calculator(5, 9);
    print(calcResult);

    String introduceMy = introduce(name: '김진한');
    print(introduceMy);

    String o = optional("김진한", c: '김휘건', b: "김모건");
    print(o);

  }

  int add() {
    return 30;
  }

  double calculator(int a, int b) {
    return (a + b) * 1.5;
  }

  String introduce({required String name}) {
    return "안녕하세요. $name입니다.";
  }

  String optional(String a, {String b = '', required String c}) {
    return "안녕하세요 $a님. $c를 잘 부탁드립니다. $b";
  }


}
