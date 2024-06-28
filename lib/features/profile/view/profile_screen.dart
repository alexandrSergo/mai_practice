import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("Profile screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}