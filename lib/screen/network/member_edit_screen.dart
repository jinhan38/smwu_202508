import 'package:flutter/material.dart';

class MemberEditScreen extends StatefulWidget {
  const MemberEditScreen({required this.email, super.key});

  final String email;

  @override
  State<MemberEditScreen> createState() => _MemberEditScreenState();
}

class _MemberEditScreenState extends State<MemberEditScreen> {

  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("회원 정보 수정")),
    body: Column(
      children: [
        TextFormField(controller: emailController),
      ],
    ),);
  }
}
