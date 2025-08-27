import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberEditScreen extends StatefulWidget {
  const MemberEditScreen({required this.email, super.key});

  final String email;

  @override
  State<MemberEditScreen> createState() => _MemberEditScreenState();
}

class _MemberEditScreenState extends State<MemberEditScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("회원 정보 수정")),
    body: Column(
      children: [
        TextFormField(controller: emailController),
        TextFormField(controller: passwordController),
        TextFormField(controller: descriptionController),
        ElevatedButton(onPressed: () async{
          await dio.patch('/api/v1/member/update', data: {
            "email" : emailController.text,
            "password" : passwordController.text,
            'description' : descriptionController.text,
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("수정 성공")));
          await Future.delayed(Duration(milliseconds: 800));
          Navigator.pop(context);
        }, child: Text("업데이트")),
      ],
    ),);
  }
}
