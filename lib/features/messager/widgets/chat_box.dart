import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/functions/date_sort.dart';
import 'package:mai_practice/components/test_data/test_user.dart';
import 'package:mai_practice/features/auth/models/user_model.dart';
import 'package:mai_practice/features/messager/models/chat_model.dart';
import 'package:mai_practice/features/messager/models/message_model.dart';
import 'package:mai_practice/features/messager/widgets/date_widget.dart';
import 'package:mai_practice/features/messager/widgets/message_widget.dart';

// Map<DateTime, List<Message>> groupMessagesByDate(List<Message> messages) {
//   Map<DateTime, List<Message>> map = {};
//   for (var e in messages) {
//     final key = DateTime(e.date.year, e.date.month, e.date.day);
//     map.putIfAbsent(key, () => []).add(e);
//   }

//   return map;
// }

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.chat});
  final Chat chat;

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {

  final _textController = TextEditingController();

  late List<Message> messages;
  late Map<DateTime, List<Message>> groupMessages;
  late User companion;

  _initChat() {
    setState(() {
      messages = sortByDate(widget.chat.messages);

      companion = widget.chat.members.firstWhere(
        (element) => element != user
      );

      groupMessages = messages.groupListsBy((message) {
        final date = message.date;
        return DateTime(date.year, date.month, date.day);
      });
    });
  }

  void _onSend() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        widget.chat.messages.add(
          Message(
            sender: user, 
            message: _textController.text.trim(), 
            date: DateTime.now(), 
            viewBy: []
          )
        );
        _textController.clear();
        _initChat();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _initChat();
    return Column(
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            ),
            color: kBackground
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 48/2,
                backgroundColor: kWhite,
                backgroundImage: Image.asset(companion.getAvatarPath).image,
              ),
              const SizedBox(width: 10,),
              Text(companion.getFio, style: const TextStyle(fontSize: 16, color: kWhite, fontWeight: FontWeight.bold),),
              const Spacer(),
              const Icon(Icons.search_outlined, color: kWhite),
              const SizedBox(width: 20,),
              const Icon(Icons.delete_outline, color: kWhite),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: groupMessages.length,
            itemBuilder: (context, index) {
              final date = groupMessages.keys.elementAt(index);
              final group = groupMessages[date];
              if (group == null) return const SizedBox();
              return Column(
                children: [
                  DateWidget(date: date,),
                  for (int i =0; i<group.length; i++)
                    MessageWidget(
                      message: group[i],
                      lastGroupMessage: i==group.length-1,
                    )
                  // ...group.map((e) => MessageWidget(
                  //   message: e,
                  //   lastGroupMessage: true,
                  // )),
                ],
              );
              // return MessageWidget(message: messages[index]);
            },
          )
        ),
        Container(
          constraints: const BoxConstraints(
            minHeight: 93
          ),
          padding: const EdgeInsets.only(
            top: 16,
            right: 16,
            left: 24,
            bottom: 24
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 0,
                    top: 0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kBackground
                  ),
                  child: TextFormField(
                    controller: _textController,
                    style: const TextStyle(fontSize: 16, color: kWhite),
                    scrollPadding: EdgeInsets.zero,
                    maxLines: null,
                    decoration: const InputDecoration(
                      label: Text("Напишите сообщение...", style: TextStyle(fontSize: 16, color: kWhite),),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              GestureDetector(
                onTap: _onSend,
                child: const Icon(Icons.attach_file, color: kWhite, size: 24,)
              ),
              const SizedBox(width: 20,),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: kPurple,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Icon(Icons.card_travel, color: kWhite, size: 24,)
              ),
            ],
          ),
        )
      ],
    );
  }
}