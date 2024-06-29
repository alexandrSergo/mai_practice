import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/components/constants.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.onLogoTap});
  final VoidCallback onLogoTap;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {

  final _typeSpace = const SizedBox(width: 30,);

  void _onNotifyTap() {
    
  }

  void _onProfileTap() {
    context.go("/profile");
  }

  void _onCompaniesTap() {
    
  }

  void _onCasesTap() {
    
  }

  void _onExitTap() {
    context.go("/");
  }

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
          GestureDetector(
            onTap: widget.onLogoTap,
            child: Image.asset('assets/images/mai.png')
          ),
          const Spacer(),
          GestureDetector(
            onTap: _onNotifyTap,
            child: SvgPicture.asset("assets/icons/notify.svg")
          ),
          _typeSpace,
          GestureDetector(
            onTap: _onProfileTap,
            child: const Text('ГЛАВНАЯ')
          ),
          _typeSpace,
          GestureDetector(
            onTap: _onCompaniesTap,
            child: const Text('КОМПАНИИ')
          ),
          _typeSpace,
          GestureDetector(
            onTap: _onCasesTap,
            child: const Text('КЕЙСЫ')
          ),
          _typeSpace,
          GestureDetector(
            onTap: _onExitTap,
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPurple,
              ),
              child: const Center(child: Text('ВЫХОД')),
            ),
          )
        ],
      ),
    );
  }
}