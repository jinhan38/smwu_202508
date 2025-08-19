import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column'),),
      body: Container(
        width: 300,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
