import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> dataList = [];
    for (int i = 0; i < 30; i++) {
      dataList.add(i);
    }
    return Scaffold(
      appBar: AppBar(title: Text("ListView 실습")),
      body: ListView.builder(
        itemCount: dataList.length,
        padding: EdgeInsets.symmetric(vertical: 24),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text('${dataList[index]}', style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          );
        },
      ),
    );
  }
}
