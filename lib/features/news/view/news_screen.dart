import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("News screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}