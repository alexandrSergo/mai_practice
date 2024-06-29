import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/uikit/dividers.dart';
import 'package:mai_practice/features/profile/widgets/profile_box.dart';
import 'package:mai_practice/features/profile/widgets/skills_box.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        child: Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: kWhite
                      )
                    ),
                    child: DropdownButton<String>(
                      value: _selectedValue,
                      items: _items.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 16,
                              color: _isDropdownOpen ? Colors.black : kWhite,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedValue = newValue!;
                          _isDropdownOpen = false;
                        });
                      },
                      hint: Text(_selectedValue, style: const TextStyle(fontSize: 16, color: Colors.black)),
                      underline: Container(),
                      dropdownColor: kDarkBlue,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined, color: kWhite),
                      onTap: () {
                        setState(() {
                          _isDropdownOpen = !_isDropdownOpen;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/settings.svg")
                ],
              ),
              const SizedBox(height: 40,),
              const DividerHorizontal(),
              const SizedBox(height: 40,),
              _selectedValue == _items[0] 
                ? const ProfileBox() 
                : const SkillsBox()
            ],
          ),
        ),
      ),
    );
  }
}
