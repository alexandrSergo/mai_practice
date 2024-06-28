import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mai_practice/components/constants.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {

  final _typeSpace = const SizedBox(width: 30,);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20
      ),
      child: Row(
        children: [
          Image.asset('assets/images/mai.png'),
          const Spacer(),
          SvgPicture.asset("assets/icons/notify.svg"),
          _typeSpace,
          const Text('ГЛАВНАЯ'),
          _typeSpace,
          const Text('КОМПАНИИ'),
          _typeSpace,
          const Text('КЕЙСЫ'),
          _typeSpace,
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPurple,
            ),
            child: const Center(child: Text('ВЫХОД')),
          )
        ],
      ),
    );
  }
}