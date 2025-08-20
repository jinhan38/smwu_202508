import 'package:flutter/material.dart';

class ColumnRowPracticeScreen extends StatelessWidget {
  const ColumnRowPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column, Row 심화")),
      body: Container(
        color: Colors.grey,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 100, height: 100, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 50, color: Colors.orange),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 50, height: 50, color: Colors.orange),
                    Container(width: 50, height: 50, color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
