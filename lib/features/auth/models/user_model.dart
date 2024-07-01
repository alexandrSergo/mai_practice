import 'package:mai_practice/features/messager/models/chat_model.dart';

class User {
  final String name;
  final String surname;
  final String middlename;
  final String email;
  final String password;
  final String? teamId;
  final List<Chat> chats;
  final String avatarPath;

  String get getInicials => "$surname ${name[0]}.${middlename[0]}.";

  String get getFio => "$surname $name $middlename";

  String get getAvatarPath => "assets/images/$avatarPath";

  User({
    required this.name, 
    required this.surname, 
    required this.email, 
    required this.password, 
    required this.teamId, 
    required this.chats,
    required this.middlename,
    required this.avatarPath,
  });
}