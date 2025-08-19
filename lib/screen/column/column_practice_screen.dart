import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatefulWidget {
  const ColumnPracticeScreen({super.key});

  @override
  State<ColumnPracticeScreen> createState() => _ColumnPracticeScreenState();
}

class _ColumnPracticeScreenState extends State<ColumnPracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column 실습")),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
