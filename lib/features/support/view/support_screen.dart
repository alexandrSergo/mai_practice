import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/components/test_data/test_questions.dart';
import 'package:mai_practice/components/uikit/purple_button.dart';
import 'package:mai_practice/features/support/widgets/question_tile.dart';
import 'package:mai_practice/features/support/widgets/switch_button.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {

  final questionController = TextEditingController();

  void _onSwitch(int? index) {

  }

  void _onSend() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          top: 40,
          right: 50
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SupportSwitcher(
                  onToggle: _onSwitch,
                ),
                
              ],
            ),
            const SizedBox(height: 100,),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              decoration: BoxDecoration(
                color: kDarkBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: questionController,
                style: const TextStyle(fontSize: 16,),
                maxLines: null,
                decoration: const InputDecoration(
                  label: Text("ОПИШИТЕ ВАШ ВОПРОС", style: TextStyle(fontSize: 16, color: kWhite),),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 138,
                  height: 53,
                  child: PurpleButton(
                    onTap: _onSend,
                    text: "ОТПРАВИТЬ",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Text("Часто задаваемые вопросы:".toUpperCase(), style: const TextStyle(fontSize: 28),),
            const SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: testQuestions.length,
                itemBuilder:(context, index) {
                  final q = testQuestions[index];
                  return QuestionTile(
                    title: q.question, 
                    children: q.answers.map(
                      (e) => Text(e, style: const TextStyle(color: kWhite, fontSize: 11),)
                    ).toList()
                  );
                },
              )
            ),
            // const QuestionTile(
            //   title: "Вопрос 1", 
            //   children: [
            //     Text('Ответ 1', style: TextStyle(color: kWhite, fontSize: 11),),
            //     SizedBox(height: 10,),
            //     Text('Ответ 2', style: TextStyle(color: kWhite, fontSize: 11),),
            //   ]
            // )
          ],
        ),
      ),
    );
  }
}