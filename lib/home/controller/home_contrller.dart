import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/shared/models/awnsers_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

import '../home_state.dart';

class HomeController {
  HomeState state = HomeState.empty;
  UserModel? user;
  List<QuizModel>? quiz;

  void getUser() {
    user = UserModel(
      name: "Sigis Dev",
      photoUrl: 'https://avatars.githubusercontent.com/u/42527356?v=4',
    );
  }

  void getQuizzes() {
    quiz = [
      QuizModel(
        title: 'NWL 5 Flutter ',
        imagem: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: 'Está curtindo Flutter ?',
            awnsers: [
              AwnsersModel(title: "Estou curtindo "),
              AwnsersModel(title: "Amando Flutter "),
              AwnsersModel(title: "Muito Top "),
              AwnsersModel(title: "Show de Bola!", isRigth: true),
            ],
          ),
        ],
      ),
    ];
  }
}
