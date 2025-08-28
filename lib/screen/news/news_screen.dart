import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(width: 100, height: 100, color: Colors.grey),
              SizedBox(width: 16),
              Column(
                children: [
                  Text(
                    "타이틀",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("부제", style: TextStyle(fontSize: 20)),
                  Text(
                    "언론사명",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "날짜",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
