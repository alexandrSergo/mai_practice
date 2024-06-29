import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/uikit/dividers.dart';

class ProfileScreenCopy extends StatefulWidget {
  const ProfileScreenCopy({super.key});

  @override
  State<ProfileScreenCopy> createState() => _ProfileScreenCopyState();
}

class _ProfileScreenCopyState extends State<ProfileScreenCopy> {
  String _selectedValue = 'ПРОФИЛЬ';
  final List<String> _items = ['ПРОФИЛЬ', 'НАВЫКИ'];
  bool _isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 153,
                    padding: EdgeInsets.all(_isDropdownOpen ? 0 : 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: kWhite
                      )
                    ),
                    child: SizedBox(
                      width: 153,
                      child: !_isDropdownOpen 
                        ? Row(
                            children: [
                              Text(_selectedValue, style: const TextStyle(fontSize: 16, color: kWhite),),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isDropdownOpen = !_isDropdownOpen;
                                  });
                                }, 
                                icon: Icon(
                                  _isDropdownOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                  color: _isDropdownOpen ? Colors.black : kWhite,
                                ),
                              )
                            ],
                          ) 
                        : Container(
                            color: kWhite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(_selectedValue, style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isDropdownOpen = !_isDropdownOpen;
                                          });
                                        }, 
                                        icon: Icon(
                                          _isDropdownOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                          color: _isDropdownOpen ? Colors.black : kWhite,
                                        ),
                                      )
                                    ],
                                  ),
                                  ..._items.map(
                                    (e) => Column(
                                      children: [
                                        const SizedBox(height: 10,),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedValue = e;
                                              _isDropdownOpen = false;
                                            });
                                          },
                                          child: Text(e, style: const TextStyle(fontSize: 16, color: Colors.black),)
                                        ),
                                      ],
                                    )
                                  )
                                ],
                              ),
                          ),
                    )
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SvgPicture.asset("assets/icons/settings.svg"),
                  )
                )
              ],
            ),
            const SizedBox(height: 40,),
            const DividerHorizontal()
          ],
        ),
      ),
    );
  }
}
