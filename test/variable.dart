import 'package:flutter/material.dart';

class Variable {
  Variable() {
    String name = '김진한';
    name = 'jinhan';
    int age = 34;
    bool check = true;
    bool check2 = false;
    double weight = 75;

    // var, dynamic
    var animal = 'dog';
    animal = 'cat';

    dynamic home = false;
    home = true;
    home = 'my home';
    home = 10;

    String? smwu = 'yes';
    smwu = null;
    // Text(smwu);
    int? age2 = 30;
    age2 = null;
    bool? h2 = false;
    h2 = null;

    // final, const 변수의 값 변경 불가
    // final과 const의 차이는 -> 컴파일 시점의 차이
    // 컴파일 = 사람이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업.
    // 런타임 = 프로그램을 실행하고 있는 상태.
    // const는 컴파일 시점에 값이 정해짐.
    // final은 런타임 시점에 값이 정해짐. -> 메모리에 올라옴.
    final String name3 = 'jinhan38';
    const String address = 'aaa';
    // address = "bbb";


  }
}
