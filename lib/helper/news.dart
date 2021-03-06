import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/article_model.dart';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String api =
        'https://newsapi.org/v2/top-headlines?country=in&category=general&apiKey=7b5c288d729d4d16b1dbee468517e486';
    final Uri url = Uri.parse(api);
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass{
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    String api =
        'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=7b5c288d729d4d16b1dbee468517e486';
    final Uri url = Uri.parse(api);
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}