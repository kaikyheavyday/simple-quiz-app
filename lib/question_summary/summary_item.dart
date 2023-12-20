import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final correctAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemData['questions_index'] as int,
          isCorrectAnswer: correctAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.kanit(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Your answer : ',
                    style: GoogleFonts.kanit(
                      color: Colors.amber,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    itemData['user_answer'] as String,
                    style: GoogleFonts.kanit(
                      color: Colors.amber,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Correct answer : ',
                    style: GoogleFonts.kanit(
                      color: Colors.greenAccent,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    itemData['correct_answer'] as String,
                    style: GoogleFonts.kanit(
                      color: Colors.greenAccent,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        )
      ],
    );
  }
}
