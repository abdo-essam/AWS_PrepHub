
import 'package:awsprephub/features/review_question/screen/widget/review_question_screen_body.dart';
import 'package:flutter/material.dart';

class ReviewQuestionScreen extends StatelessWidget {
  const ReviewQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: ReviewQuestionScreenBody());
  }
}
