import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smwu_202508/screen/button_screen.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';

void main() {

  /// Get 패키지에 MyController를 넣음.
  /// permanent 속성을 사용해서 계속 살아있도록 설정.
  Get.put(MyController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ButtonScreen(),
    );
  }
}
