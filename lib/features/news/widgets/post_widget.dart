import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/uikit/purple_button.dart';
import 'package:mai_practice/features/news/model/publication_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key, required this.post, required this.last});
  final Publication post;
  final bool last;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

  void _onPostTap() {
    context.go("/news/:${widget.post.id}");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30
      ),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              minHeight: 160,
              minWidth: double.infinity
            ),
            child: Row(
              children: [
                Container(
                  width: 400,
                  constraints: const BoxConstraints(
                    minHeight: 160,
                    maxHeight: 160
                  ),
                  //height: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: Image.asset(widget.post.imagePath).image
                    )
                  ),
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.post.contentComment, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: 950,
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(widget.post.title, style: const TextStyle(fontSize: 28),)
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        Text(widget.post.getDate, style: const TextStyle(fontSize: 14),),
                        const SizedBox(width: 15,),
                        PurpleButton(
                          onTap: _onPostTap, 
                          text: 'ЧИТАТЬ ПОДРОБНЕЕ'
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          !widget.last ? Container(
            width: double.infinity,
            height: 1,
            color: kWhite,
          ) : const SizedBox()
        ],
      ),
    );
  }
}