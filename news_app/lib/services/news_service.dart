import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=00c01810c51a4715b1f7daa8373fbca4&category=$category');
      
      Map<String,dynamic> jsonData = response.data;
      
      List<dynamic> articles = jsonData['articles'];
      
      List<ArticleModel> articlesList = [];
      
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        // or:
        // ArticleModel(
        //   image: article['urlToImage'],
        //   title: article['title'],
        //   subTitle: article['description'],
        // );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
