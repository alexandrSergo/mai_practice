import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/functions/correct_datetime.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key, required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kGrey
      ),
      child: Text(correctDate(date), style: const TextStyle(fontSize: 12, color: Colors.black),)
    );
  }
}