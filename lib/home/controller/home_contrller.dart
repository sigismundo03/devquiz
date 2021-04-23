// import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/repository/home_repository.dart';
// import 'package:DevQuiz/shared/models/awnsers_model.dart'; 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

import '../home_state.dart';

class HomeController {
  ValueNotifier stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  UserModel? user;
  List<QuizModel>? quiz;

  final respository = HomeRepository();

  set state( HomeState value) =>  stateNotifier.value = value;
  HomeState get state => stateNotifier.value;

  void getUser()  async{
    state = HomeState.loading;

    user =  await respository.getUser();
    
    state = HomeState.succes;
  }

  void getQuizzes() async{
    state = HomeState.loading;
    
    quiz = await respository.getQuizzes();
    
    state = HomeState.succes;
    
    
  }
}
