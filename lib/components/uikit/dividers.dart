import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class DividerHorizontal extends StatelessWidget {
  const DividerHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      width: double.infinity,
      height: 1,
    );
  }
}

class DividerVertical extends StatelessWidget {
  const DividerVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: double.infinity,
      width: 1,
    );
  }
}