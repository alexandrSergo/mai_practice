import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SupportSwitcher extends StatelessWidget {
  const SupportSwitcher({super.key, required this.onToggle});
  final void Function(int?) onToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: kWhite
        )
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Scrollbar(
          child: ToggleSwitch(
            fontSize: 16,
            customWidths: const [400, 320],
            cornerRadius: 12,
            animate: true,
            curve: Curves.easeIn,
            animationDuration: 300,
            activeBgColor: const [kWhite],
            radiusStyle: true,
            activeFgColor: kBackground,
            inactiveBgColor: kBackground,
            inactiveFgColor: kWhite,
            labels: ['задать вопрос руководителю программы'.toUpperCase(), 'задать вопрос техподдержке'.toUpperCase()],
            onToggle: onToggle,
          ),
        ),
      ),
    );
  }
}
