import 'package:flutter/material.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/uikit/dividers.dart';
import 'package:mai_practice/components/window_properies.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 290/2,
              backgroundImage: Image.asset("assets/images/avatar1.JPG", fit: BoxFit.cover,).image,
              backgroundColor: kDarkBlue,
            ),
            const SizedBox(width: 40,),
            SizedBox(
              width: width*0.24,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ФАМИЛИЯ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("LOREM", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ИМЯ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("LOREM", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ОТЧЕСТВО", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("LOREM", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ДАТА РОЖДЕНИЯ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("12.12.2012", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: width*0.31,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("ПОЧТА МАИ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Text("mai@mai.education".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("ЛИЧНАЯ ПОЧТА", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Text("mail@gmail.com".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("НОМЕР ТЕЛЕФОНА", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text("8(900)690-36-90", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("НИК В TELEGRAM", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Text("@alexandr_sergo".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                    ],
                  ),
                  const SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 40,),
        const DividerHorizontal(),
        const SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Дополнительная информация'.toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),),
          ],
        ),
        const SizedBox(height: 40,),
        SizedBox(
          height: 279,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 279,
                width: width*0.31,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("МОЯ КОМАНДА", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("ИО260-23", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text("РУКОВОДИТЕЛЬ\nПРОГРАММЫ", style: TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("КРЫЛОВ СЕРГЕЙ\nСЕРГЕЕВИЧ", style: TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30,),
              const DividerVertical(),
              const Spacer(),
              SizedBox(
                height: 279,
                width: width*0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Наименование\nОПОП\n".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold,),),
                        const Spacer(),
                        Text("Цифровое моделирование и\nсуперкомпьютерные технологии\n(2023/2024)".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text("Академическая степень".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28, fontWeight: FontWeight.bold),),
                        const Spacer(),
                        Text("Бакалавриат".toUpperCase(), style: const TextStyle(color: kWhite, fontSize: 28),textAlign: TextAlign.end),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}