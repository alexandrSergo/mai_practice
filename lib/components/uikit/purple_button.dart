import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class PurpleButton extends StatelessWidget {
  const PurpleButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 40,
          minWidth: 0
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPurple
        ),
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 14, color: kWhite),),
        ),
      ),
    );
  }
}