import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';
import 'package:dio/dio.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticleModel> articles = [];
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('oops there was an error , try later'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });

    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty ? NewsListView(
    //   articles: articles,
    // ) : SliverToBoxAdapter(child: Text('oops there was an error , try later'),);
  }
}
