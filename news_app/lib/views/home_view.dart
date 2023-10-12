import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_tile.dart';

import '../models/article_model.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';
import 'package:dio/dio.dart';

import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // or :
        // backgroundColor: Color(0xffF8F8F9FF),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          // or :
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),

            NewsListViewBuilder(
              category: 'general',
            ),

            // SliverList(
            //     delegate: SliverChildBuilderDelegate(
            //         childCount: 10,
            //         (context, index) {
            //   return NewsTile();
            // })),

            // SliverToBoxAdapter(child: NewsListView(),),
          ],
        ),
        //child:
        // Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(height: 32,),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
      // CategoriesListView(),
      // NewsListView(),
      // CategoryCard(),
    );
  }
}
