import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key, required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(articleModel: articles[index],),
          );
        },
      ),
    );

    // ListView.builder(
    // shrinkWrap: true,
    // physics: NeverScrollableScrollPhysics(),
    //   itemCount: ,
    //   itemBuilder: (context,index){
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 22),
    //       child: NewsTile(),
    //     );
    //   });
  }
}
