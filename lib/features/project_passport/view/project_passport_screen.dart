import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class ProjectPassportScreen extends StatefulWidget {
  const ProjectPassportScreen({super.key});

  @override
  State<ProjectPassportScreen> createState() => _ProjectPassportScreenState();
}

class _ProjectPassportScreenState extends State<ProjectPassportScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("Passport screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}