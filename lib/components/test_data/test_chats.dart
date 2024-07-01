import 'package:mai_practice/components/test_data/test_messages.dart';
import 'package:mai_practice/components/test_data/test_user.dart';
import 'package:mai_practice/components/test_data/test_users.dart';
import 'package:mai_practice/features/messager/models/chat_model.dart';

final chats = [chat1, chat2, chat3, chat4];

final chat1 = Chat(
  messages: messagesChat1, 
  members: [user, user1], 
  id: '${user.name} ${user1.name}',
);

final chat2 = Chat(
  messages: messagesChat2, 
  members: [user, user2],
  id: '${user.name} ${user2.name}',
);

final chat3 = Chat(
  messages: messagesChat3, 
  members: [user, user3],
  id: '${user.name} ${user3.name}',
);

final chat4 = Chat(
  messages: messagesChat4, 
  members: [user, user4],
  id: '${user.name} ${user4.name}',
);