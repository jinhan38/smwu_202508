import 'package:flutter/material.dart';

class ImagePracticeScreen extends StatelessWidget {
  const ImagePracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image 실습")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Image.network(
              'https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            Image.asset("assets/company_sustainability.png", width: 200, height: 200, fit: BoxFit.fitWidth),
          ],
        ),
      ),
    );
  }
}
