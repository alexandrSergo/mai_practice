import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/test_data/test_news.dart';
import 'package:mai_practice/features/news/widgets/post_widget.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30
        ),
        child: Scrollbar(
          scrollbarOrientation: ScrollbarOrientation.right,
          interactive: true,
          thumbVisibility: true,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10
            ),
            child: ListView.builder(
              itemCount: testnews.length,
              itemBuilder: (context, index) {
                return PostWidget(
                  post: testnews[index], 
                  last: index==testnews.length-1,
                );
              },
            ),
          )
        ),
      ),
    );
  }
}