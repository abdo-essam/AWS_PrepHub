import 'package:awsprephub/core/helper/local_database/app_database.dart';
import 'package:awsprephub/core/models/questions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'exam_state.dart';

class ExamCubit extends Cubit<ExamState> {
  ExamCubit() : super(ExamInitial());

  static ExamCubit get(context) => BlocProvider.of<ExamCubit>(context);
  int index = 0;
  int score = 0;
  List<Question> questions = [];

  Future<void> getQuestionsFromDatabase() async {
    questions = await AppDatabase.instance.getQuestions();
    emit(ExamGetAllQuestions(questions: questions));
  }

  Future<void> getQuestions() async {
    emit(ExamLoading());
    try {
      await getQuestionsFromDatabase();
    } catch (e) {
      emit(ExamError(error: e.toString()));
    }
  }

  updateIndex(int currentIndex) async {
    index = currentIndex + 1;
    emit(ExamQuestionIndexUpdated(questions: questions));
  }

  increaseScore() {
    score++;
    emit(ExamIncreaseScore());
  }
}
