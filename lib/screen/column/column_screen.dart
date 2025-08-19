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

        ),
      ),
    );
  }
}
