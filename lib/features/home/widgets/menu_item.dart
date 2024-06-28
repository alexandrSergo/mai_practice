import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mai_practice/components/constants.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({
    super.key, 
    required this.icon, 
    required this.text, 
    required this.pathLocation,
    required this.selected
  });
  final String icon;
  final String text;
  final String pathLocation;
  final bool selected;

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      margin: const EdgeInsets.only(
        bottom: 25
      ),
      decoration: BoxDecoration(
        border: widget.selected ? Border.all(
          color: kWhite
        ): null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/${widget.icon}.svg"
          ),
          const SizedBox(
            width: 15,
          ),
          Text(widget.text, style: const TextStyle(color: kWhite),)
        ],
      ),
    );
  }
}