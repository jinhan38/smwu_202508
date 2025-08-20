import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPracticeScreen extends StatelessWidget {
  const StackPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack 실습")),
      body: SizedBox(
        child: Stack(
          children: [
            Container(width: 320, height: 320, color: Colors.purple),
            Container(width: 280, height: 280, color: Colors.indigo),
            Container(width: 240, height: 240, color: Colors.blue),
            Container(width: 200, height: 200, color: Colors.green),
            Container(width: 160, height: 160, color: Colors.yellow),
            Container(width: 120, height: 120, color: Colors.orange),
            Container(width: 80, height: 80, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
