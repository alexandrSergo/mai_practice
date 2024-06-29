import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/features/auth/widgets/auth_button.dart';
import 'package:mai_practice/features/auth/widgets/auth_textfield.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberMe = false;

  void _onLoginTap() {
    context.go("/profile");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [
              Flexible(
                child: Text("ПЛАТФОРМА КОМАНДООБРАЗОВАНИЯ", 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 61),
                  textAlign: TextAlign.center,
                )
              )
            ],
          ),
          const SizedBox(height: 50,),
          const Text("ВХОД", style: TextStyle(fontSize: 35),),
          AuthTextField(
            label: "E-MAIL", 
            controller: emailController
          ),
          AuthTextField(
            label: "ПАРОЛЬ", 
            controller: passwordController,
            haveBottomPadding: false,
          ),
          SizedBox(
            width: 627,
            child: Row(
              children: [
                const Text("ЗАБЫЛИ ПАРОЛЬ?", style: TextStyle(fontSize: 14),),
                const Spacer(),
                const Text("ЗАПОМНИТЬ МЕНЯ", style: TextStyle(fontSize: 14),),
                const SizedBox(width: 4,),
                Checkbox(
                  value: rememberMe, 
                  activeColor: kPurple,
                  checkColor: kPurple,
                  fillColor: const MaterialStatePropertyAll(kWhite),
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                    
                  }
                )
              ],
            ),
          ),
          const SizedBox(height: 80,),
          SizedBox(
            width: 152,
            child: AuthButtonFill(
              onTap: _onLoginTap, 
              text: "ВОЙТИ"
            ),
          )
        ],
      )
    );
  }
}