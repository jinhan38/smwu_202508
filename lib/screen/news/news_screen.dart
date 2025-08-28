import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/news/article.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  /// GET 방식
  /// https://newsapi.org/v2/everything?q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=API_KEY
  /// https://newsapi.org => 도메인
  /// /v2/everything => path 도메일 ~ ? 전까지.
  /// q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=API_KEY
  /// ? 이후 => query
  ///
  /// GET과 POST의 차이
  /// GET은 인터넷 주소창에 검색해도 호출 가능.
  /// POST는 인터넷 주소창에서 호출 불가능.

  bool loading = true;
  int page = 1;
  List<Article> articles = [];
  int totalResults = 0;

  Future<void> getData() async {
    if (!loading) {
      loading = true;
      setState(() {});
    }

    Uri uri = Uri(
      scheme: "https",
      host: "newsapi.org",
      path: "/v2/everything",
      queryParameters: {
        "q": "google",
        "from": "2025-08-01",
        "sortBy": "publishedAt",
        "apiKey": "f4e382a85f8e45a5878357459c397275",
        "pageSize": "20",
        "page": page.toString(),
      },
    );

    var response = await Dio().get(uri.toString());

    totalResults = response.data["totalResults"] ?? 0;

    List<Article> tempList =
        (response.data["articles"] as Iterable).map((e) {
          return Article.fromJson(e);
        }).toList();
    articles.addAll(tempList);

    print(articles);

    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 130, height: 130, color: Colors.grey),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "타이틀",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                    Text("부제", style: TextStyle(fontSize: 17), maxLines: 2),
                    Text("언론사명", style: TextStyle(fontSize: 14)),
                    Text("날짜", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
