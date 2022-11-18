import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class questions extends StatefulWidget {
  questions({Key? key}) : super(key: key);

  @override
  State<questions> createState() => _questionsState();
}

class _questionsState extends State<questions> {
  int questionNumber = 1;
  @override
  Widget build(BuildContext context) {
    List<String> questions = [];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/Back_button.svg"),
              onPressed: () {},
            ),
            Text("Question $questionNumber/${questions.length}")
          ],
        ),
      ),
    );
  }
}
