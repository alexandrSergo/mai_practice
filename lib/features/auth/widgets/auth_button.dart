import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class AuthButtonBorder extends StatelessWidget {
  const AuthButtonBorder({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 323,
          minWidth: 0
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 3,
            color: kWhite
          )
        ),
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}

class AuthButtonFill extends StatelessWidget {
  const AuthButtonFill({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 323,
          minWidth: 0
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPurple
        ),
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}