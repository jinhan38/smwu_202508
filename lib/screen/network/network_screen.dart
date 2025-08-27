import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/network/member_list_screen.dart';
import 'package:smwu_202508/screen/network/member_register_screen.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MemberListScreen();
                  },
                ),
              );
            },
            child: Text("회원 목록 조회"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MemberRegisterScreen();
                  },
                ),
              ).then((value) {
                /// value가 null이 아니고
                /// value가 bool 타입이고
                /// value가 true인 경우
                if(value != null && value is bool && value) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("등록 성공")));
                }
              },);
            },
            child: Text("회원 등록"),
          ),
        ],
      ),
    );
  }
}
