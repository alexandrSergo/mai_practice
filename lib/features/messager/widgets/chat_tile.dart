import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/functions/date_sort.dart';
import 'package:mai_practice/components/test_data/test_user.dart';
import 'package:mai_practice/features/auth/models/user_model.dart';
import 'package:mai_practice/features/messager/models/chat_model.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({super.key, required this.chat, required this.selected});
  final Chat chat;
  final bool selected;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {

  late final User _user;

  @override
  void initState() {
    super.initState();
    _user = widget.chat.members.firstWhere((element) => element != user);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.selected ? kBackground : null,
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: kWhite,
          backgroundImage: Image.asset(_user.getAvatarPath, fit: BoxFit.cover,).image,
        ),
        title: Text(_user.getInicials, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kWhite)),
        subtitle: Text(sortByDate(widget.chat.messages).first.message, style: const TextStyle(fontSize: 14,color: kWhite), overflow: TextOverflow.ellipsis,),
      ),
    );
  }
}