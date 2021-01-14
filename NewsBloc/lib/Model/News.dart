import 'package:flutter/material.dart';

class News {
  int _totalNewsResult;
  List<_Article> _articles;
  //as you can see that the from json is nothing but a named constructor
  News.fromJson(Map<String, dynamic> parsedJson) {
    _totalNewsResult = parsedJson[''];
    List<_Article> articles = [];
    for (int i = 0; i < parsedJson[''].length; i++) {
      _Article article = _Article(parsedJson[''][i]);
      articles.add(article);
    }
    _articles = articles;
  }
  int get totalNews => _totalNewsResult;
  List<_Article> get articles => _articles;
}

class _Article {
  String _sourceName;
  String _auther;
  String _title;
  String _date;
  String _imageUrl;
  String _content;
  _Article(result) {
    _auther = result[''];
  }
  String get sorceName => _sourceName;
  String get auther => _auther;
  String get title => _title;
  String get date => _date;
  String get imageUrl => _imageUrl;
  String get content => _content;
}
