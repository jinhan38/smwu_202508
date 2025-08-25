import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key});

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

class _InnerStateState extends State<InnerState> {
  int innerCount = 0;

  /// initState 는 Stateful 위젯이 생성될 때 한 번만 호출됨.
  @override
  void initState() {
    super.initState();
    innerCount = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(innerCount.toString()),
        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text("Inner count up"),
        ),
      ],
    );
  }
}
