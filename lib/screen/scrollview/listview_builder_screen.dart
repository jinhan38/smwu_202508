import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dataList = ["A", "B", "C", "D", "가", "나", " 다", "라", "서울", "숙명여대", "숙대입구역"];
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder")),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Text(dataList[index]);
        },
      ),
    );
  }
}
