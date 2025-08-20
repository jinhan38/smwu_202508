import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: 0, left: 0,
                child: Container(color: Colors.purple, width: 170, height: 170)),
            Positioned(
                top: 40,
                left: 40,
                child: Container(color: Colors.yellow, width: 160, height: 160)),
            Positioned(top: 100,left: 100, child: Container(color: Colors.orange, width: 120, height: 120)),
            Positioned(top: 170,left: 170, child: Container(color: Colors.red, width: 70, height: 70)),
          ],
        ),
      ),
    );
  }
}
