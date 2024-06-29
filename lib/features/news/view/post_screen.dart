import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/test_data/test_news.dart';
import 'package:mai_practice/components/uikit/purple_button.dart';
import 'package:mai_practice/features/news/model/publication_model.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key, required this.postId});
  final String postId;

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  late final Publication post = testnews.firstWhere(
    (element) => element.id == widget.postId
  );

  void _onBack() {
    context.go("/news");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 10
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 82,
                    child: PurpleButton(
                      onTap: _onBack, 
                      text: 'НАЗАД'
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(post.imagePath),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Flexible(
                    child: Text(post.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 64),)
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(
                    child: Text(post.text, style: const TextStyle(fontSize: 28),)
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}