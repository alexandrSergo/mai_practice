import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("РОЛЬ И НАВЫКИ", style: TextStyle(color: kWhite, fontSize: 28),)
          ],
        ),
        SizedBox(height: 40,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ПРЕДПОЧТИТЕЛЬНАЯ РОЛЬ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                Text("НАВЫКИ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(width: 60,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TEAM LEAD", style: TextStyle(color: kWhite, fontSize: 28),),
                Text("LVL 999", style: TextStyle(color: kWhite, fontSize: 28),)
              ],
            )
          ],
        )
      ],
    );
  }
}