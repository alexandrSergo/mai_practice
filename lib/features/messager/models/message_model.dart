import 'package:mai_practice/features/auth/models/user_model.dart';

class Message {
  final User sender;
  final String message;
  final DateTime date;
  final List<User> viewBy;

  Message({required this.sender, required this.message, required this.date, required this.viewBy});
}