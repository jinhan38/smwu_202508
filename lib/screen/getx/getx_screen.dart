import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smwu_202508/screen/getx/my_controller.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    MyController.to;
    return Scaffold(
      appBar: AppBar(title: Text("Getx")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          /// GetX 상태관리의 두가지 요소
          /// 1. Rx로 선언된 변수
          /// 2. Obx로 감쌀것.
          Obx(() {
            return Text(MyController.to.count.value.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),);
          }),

          ElevatedButton(
            onPressed: () {
              MyController.to.countUp();
            },
            child: Text("Count Up"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Move")),
        ],
      ),
    );
  }
}
