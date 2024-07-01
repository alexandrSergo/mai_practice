import 'package:mai_practice/features/auth/models/user_model.dart';
import 'package:mai_practice/features/messager/models/message_model.dart';

class Chat {
  final String id;
  final List<Message> messages;
  final List<User> members;

  Chat({
    required this.messages, 
    required this.members,
    required this.id,
  });
}