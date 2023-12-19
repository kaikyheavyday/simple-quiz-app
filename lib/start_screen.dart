import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/scoopydoo.png',
            width: 300,
          ),
          const SizedBox(height: 60),
          Text(
            "Learn Flutter",
            style: GoogleFonts.kanit(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text('Start Quiz',
                style: GoogleFonts.kanit(
                    fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
