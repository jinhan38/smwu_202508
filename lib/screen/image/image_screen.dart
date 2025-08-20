import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                width: 300,
                height: 300,
                child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png'),
              ),
              SizedBox(height: 30),
              Container(
                color: Colors.grey,
                width: 300,
                height: 300,
                child: Image.network(
                  'https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                  fit: BoxFit.fitHeight,
                ),
              ),

              SizedBox(height: 30),
              Container(
                color: Colors.grey,
                width: 300,
                height: 300,
                child: Image.network(
                  'https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                  fit: BoxFit.fitWidth,
                ),
              ),

              SizedBox(height: 30),
              Container(
                color: Colors.grey,
                width: 200,
                height: 200,
                child: Image.network(
                  'https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
