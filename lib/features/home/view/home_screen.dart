import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/window_properies.dart';
import 'package:mai_practice/features/home/widgets/home_appbar.dart';
import 'package:mai_practice/features/home/widgets/menu_item.dart';
import 'package:mai_practice/features/profile/view/profile_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.child, required this.location});
  final Widget child;
  final String location;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = -1;

  bool _haveRoute = false;

  final List<String> icons = [
    "news",
    "my_team",
    "search_team",
    "passport",
    "notify",
    "message",
    "support"
  ];

  final List<String> paths = [
    '/news',
    '/team',
    '/searchTeam',
    '/passport',
    '/notifications',
    '/chats',
    '/support',
  ];

  final List<String> labels = [
    "НОВОСТИ",
    "МОЯ КОМАНДА",
    "ПОИСК КОМАНДЫ",
    "ПАСПОРТ ПРОЕКТА",
    "УВЕДОМЛЕНИЯ",
    "СООБЩЕНИЯ",
    "ПОМОЩЬ",
  ];

  void _goOtherTab(BuildContext context, int index) {
    if (index == _currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = paths[index];

    setState(() {
      _currentIndex = index;
    });
    router.go(location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height*0.09), 
        child: const HomeAppBar()
      ),
      // appBar: AppBar(
      //   leading: Image.asset('assets/images/mai.png'),
      //   backgroundColor: kBackground,
      // ),
      body: Row(
        children: [
          Container(
            width: width*0.16,
            color: kBackground,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 80
              ),
              child: ListView.builder(
                itemCount: paths.length,
                itemBuilder:(context, index) {
                  return GestureDetector(
                    onTap: () {
                      _haveRoute = true;
                      _goOtherTab(context, index);
                    },
                    child: MenuItem(
                      icon: icons[index], 
                      text: labels[index], 
                      pathLocation: paths[index], 
                      selected: _currentIndex == index && _haveRoute
                    )
                  );
                },
              ),
            )
          ),
          SafeArea(
            child: SizedBox(
              width: width - width*0.16,
              child: _haveRoute 
                ? widget.child
                : const ProfileScreen()
            )
          )
        ],
      ),
    );
  }
}