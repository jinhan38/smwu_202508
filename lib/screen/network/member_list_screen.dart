import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/network/json_model.dart';
import 'package:smwu_202508/screen/network/member.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://d0a701c36a9e.ngrok-free.app"));
  Dio dio2 = Dio(
    BaseOptions(
      baseUrl:
          "https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json",
    ),
  );

  List<Member> memberList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("멤버 조회")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              dio.get('/api/v1/member/all').then((value) {
                if (value.data is Iterable) {}

                memberList =
                    (value.data as Iterable)
                        .map((e) => Member.fromJson(e))
                        .toList();
                print('memberList : $memberList');
              });
            },
            child: Text("Get Data"),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     dio2.get("").then((value) {
          //       print(value);
          //       var jsonModel = JsonModel.fromJson(value.data);
          //       print(jsonModel);
          //
          //     });
          //   },
          //   child: Text("Get Json"),
          // ),
        ],
      ),
    );
  }
}
