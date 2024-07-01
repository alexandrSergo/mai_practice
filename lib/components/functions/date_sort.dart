import 'package:mai_practice/features/messager/models/message_model.dart';

List<Message> sortByDate(List<Message> messages) {
  messages.sort(
    (a, b) => a.date.compareTo(b.date)
  );
  return messages.reversed.toList();
}