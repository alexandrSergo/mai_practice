import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/features/auth/widgets/auth_button.dart';
import 'package:mai_practice/features/auth/widgets/auth_textfield.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  void _onRegisterTap() {
    context.go("/profile");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("РЕГИСТРАЦИЯ", style: TextStyle(fontSize: 35),),
          AuthTextField(
            label: "ИМЯ", 
            controller: nameController
          ),
          AuthTextField(
            label: "ФАМИЛИЯ", 
            controller: surnameController
          ),
          AuthTextField(
            label: "E-MAIL", 
            controller: emailController
          ),
          AuthTextField(
            label: "ПАРОЛЬ", 
            controller: passwordController,
          ),
          AuthTextField(
            label: "ПОДТВЕРДИТЕ ПАРОЛЬ", 
            controller: repeatPasswordController,
          ),
          const SizedBox(height: 80,),
          SizedBox(
            width: 323,
            child: AuthButtonFill(
              onTap: _onRegisterTap, 
              text: "ЗАРЕГИСТРИРОВАТЬСЯ"
            ),
          )
        ],
      )
    );
  }
}