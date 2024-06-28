import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class MessagerScreen extends StatefulWidget {
  const MessagerScreen({super.key});

  @override
  State<MessagerScreen> createState() => _MessagerScreenState();
}

class _MessagerScreenState extends State<MessagerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("Messager screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}