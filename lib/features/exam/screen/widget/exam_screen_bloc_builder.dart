import 'package:awsprephub/features/exam/manager/exam_cubit.dart';
import 'package:awsprephub/features/exam/manager/exam_state.dart';
import 'package:awsprephub/features/result/screen/ui/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/show_back_alert_dialog.dart';
import '../../../../core/models/questions.dart';
import 'exam_screen_body.dart';

class ExamScreenBlocBuilder extends StatelessWidget {
  const ExamScreenBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamCubit, ExamState>(
      builder: (context, state) {
        if (state is ExamLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          );
        }
        if (state is ExamGetAllQuestions) {
          return getQuestionScreen(state.questions);
        }

        if (state is ExamError) {
          showBackAlertDialog(context, state.error);
        }
        if (state is ExamQuestionIndexUpdated) {
          return getQuestionScreen(state.questions);
        }

        if (state is ExamQuestionLastIndexUpdated) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          );
        }

        return const Text('Something went wrong');
      },
    );
  }

  Widget getQuestionScreen(List<Question> questions) {
    return ExamScreenBody(questions: questions);
  }
}
