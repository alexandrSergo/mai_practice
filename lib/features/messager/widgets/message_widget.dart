import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/functions/correct_datetime.dart';
import 'package:mai_practice/components/test_data/test_user.dart';
import 'package:mai_practice/features/messager/models/message_model.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.message, required this.lastGroupMessage});
  final Message message;
  final bool lastGroupMessage;

  @override
  Widget build(BuildContext context) {
    final bool sendByMe = message.sender == user;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16
      ),
      child: Row(
        mainAxisAlignment: sendByMe 
          ? MainAxisAlignment.end 
          : MainAxisAlignment.start,
        children: [
          lastGroupMessage ? CircleAvatar(
            radius: 32/2,
            backgroundColor: kWhite,
            backgroundImage: Image.asset(message.sender.getAvatarPath).image,
          ) : const SizedBox(width: 32,),
          const SizedBox(width: 16,),
          Container(
            constraints: const BoxConstraints(
              minHeight: 89,
              minWidth: 162,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: sendByMe ? const Radius.circular(20) : const Radius.circular(0),
                bottomRight: sendByMe ? const Radius.circular(0) : const Radius.circular(20),
              ),
              color: sendByMe ? kGrey : kBackground
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      message.sender.getInicials, 
                      style: TextStyle(
                        color: sendByMe ? Colors.black : kWhite, 
                        fontSize: 12, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 500
                      ),
                      child: Flexible(
                        child: Text(
                          message.message, 
                          style: TextStyle(
                            color: sendByMe ? Colors.black : kWhite,
                            fontSize: 16
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(correctTime(message.date), style: TextStyle(
                      fontSize: 12, 
                      color: sendByMe ? Colors.black : kGrey
                    ),),
                    Icon(Icons.check, size: 12, color: sendByMe ? Colors.black : kWhite,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}