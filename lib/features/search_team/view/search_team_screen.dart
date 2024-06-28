import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class SearchTeamScreen extends StatefulWidget {
  const SearchTeamScreen({super.key});

  @override
  State<SearchTeamScreen> createState() => _SearchTeamScreenState();
}

class _SearchTeamScreenState extends State<SearchTeamScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: Text("Search team screen", style: TextStyle(color: kWhite),),
      ),
    );
  }
}