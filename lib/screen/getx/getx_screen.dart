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
        children: [
          Obx(() {
            return Text(MyController.to.count.value.toString());
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
