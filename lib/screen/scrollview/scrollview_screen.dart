import 'package:flutter/material.dart';

class ScrollviewScreen extends StatelessWidget {
  const ScrollviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollView")),
      body: SizedBox(
        width: 200,
        height: 300,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text("가"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("나"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("다"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("라"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("마"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("바"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("사"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("아"),
              SizedBox(width: 30),
              // SizedBox(height: 30),
              Text("자"),
            ],
          ),
        ),
      ),
    );
  }
}
