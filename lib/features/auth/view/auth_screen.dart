import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/window_properies.dart';
import 'package:mai_practice/features/auth/widgets/auth_box.dart';
import 'package:mai_practice/features/auth/widgets/login_widget.dart';
import 'package:mai_practice/features/auth/widgets/registration_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  bool isLogin = true;
  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onAuthBoxTap() {
    if (!isAnimating) {
      isAnimating = true;
      if (isLogin) {
        _controller.forward().then((_) => setState(() {
          isLogin = !isLogin;
          isAnimating = false;
        }));
      } else {
        _controller.reverse().then((_) => setState(() {
          isLogin = !isLogin;
          isAnimating = false;
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: (1 - _animation.value), 
            duration: _controller.duration!,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: height,
                width: width - width*0.41,
                child: const LoginWidget()
              )
            ),
          ),
          AnimatedOpacity(
            opacity: (_animation.value), 
            duration: _controller.duration!,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: height,
                width: width - width*0.41,
                child: const RegistrationWidget()
              )
            ),
          ),
          AnimatedPositioned(
            right: _animation.value * width*0.59,
            duration: _controller.duration!,
            child: SizedBox(
              width: width*0.41,
              height: height,
              child: AuthBox(
                isLogin: isLogin, 
                onTap: _onAuthBoxTap,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              height: 55,
              child: Image.asset("assets/images/auth_logo.png")
            ),
          ),
        ],
      ),
    );
  }
}