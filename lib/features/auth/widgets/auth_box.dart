import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/window_properies.dart';
import 'package:mai_practice/features/auth/widgets/auth_button.dart';

class AuthBox extends StatelessWidget {
  const AuthBox({super.key, required this.isLogin, required this.onTap});
  final bool isLogin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(105, 20, 240, 1-0.14),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset("assets/images/auth_back.png").image
        )
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width*0.03
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("ПРИВЕТ, СТУДЕНТ!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),),
              const SizedBox(height: 30,),
              Container(
                width: 272,
                height: 5,
                color: kWhite,
              ),
              const SizedBox(height: 30,),
              Text(isLogin ? "НЕТ АККАУНТА?" : "УЖЕ ЕСТЬ АККАУНТ?", style: const TextStyle(fontSize: 29),),
              const SizedBox(height: 20,),
              AuthButtonBorder(
                onTap: onTap, 
                text: isLogin ? "ЗАРЕГИСТРИРОВАТЬСЯ" : "ВОЙТИ"
              )
            ],
          ),
        )
      )
    );
  }
}