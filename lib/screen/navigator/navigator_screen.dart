import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/navigator/navigator_2_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(width: 24),
          Center(child: Text(count.toString())),
          SizedBox(width: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Navigator2Screen(count: count);
                  },
                ),
              ).then((value) {
                if (value != null && value is int) {
                  count = value;
                  setState(() {});
                }
              });
            },
            child: Text("2번 화면으로 이동"),
          ),
        ],
      ),
    );
  }
}
