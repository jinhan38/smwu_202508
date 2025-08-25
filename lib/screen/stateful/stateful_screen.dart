import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/stateful/inner_state.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful")),
      body: Column(
        children: [
          Text("Count : $count"),
          TextButton(
            onPressed: () {
              count++;
              setState(() {});
            },
            child: Text("Count up"),
          ),

          InnerState(count: count),
        ],
      ),
    );
  }
}
