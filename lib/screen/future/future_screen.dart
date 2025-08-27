import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () async {
              print("시작 전");
              String value = await futureBasic();
              print("시작 후 : $value");
            },
            child: Text("Delay"),
          ),
        ],
      ),
    );
  }

  /// Future를 리턴하는 경우 Future를 리턴하거나
  /// Future를 리턴하지 않는다면 아니면 반드시 async 필요
  /// Future를 리턴하는 함수는 then 사용할 수 있다.
  Future<String> futureBasic() async {
    await Future.delayed(Duration(milliseconds: 1500));
    return "result";
  }
}
