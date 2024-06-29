import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField( {super.key, required this.label, required this.controller, this.haveBottomPadding,});
  final String label;
  final TextEditingController controller;
  final bool? haveBottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 627,
      height: 102,
      padding: const EdgeInsets.symmetric(
        horizontal: 20
      ),
      margin: EdgeInsets.only(
        bottom: haveBottomPadding ?? true 
          ? 15 
          : 0
      ),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          style: const TextStyle(fontSize: 19,color: Colors.black),
          decoration: InputDecoration(
            label: Text(label, style: const TextStyle(fontSize: 19, color: Color.fromRGBO(130, 130, 130, 1)),),
            border: const UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}