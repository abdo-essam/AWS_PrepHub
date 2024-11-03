import 'package:flutter/material.dart';

import '../widget/exam_screen_body.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ExamScreenBody(),
    );
  }
}
