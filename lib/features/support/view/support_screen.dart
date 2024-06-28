import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("Support screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}