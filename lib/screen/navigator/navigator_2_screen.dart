import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({super.key});

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Navigator 2")),
    );
  }
}
