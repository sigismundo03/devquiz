
// import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/home/widgets/quizcard/quiz_card_widget.dart';
import 'package:flutter/material.dart';

import 'controller/home_contrller.dart';
import 'widgets/apparbar/app_bar_widget.dart';
import 'widgets/levelbutton/level_button_widget.dart';

class HomePage extends StatefulWidget {
  
  HomePage({ Key ? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();
  
  @override
  void initState() { 
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() { 
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if(controller.state == HomeState.succes ){
    return Scaffold(
      appBar: AppBarWidget(user: controller.user!,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 02),
        child: Column(
          children: [
            SizedBox(height: 24,),
            Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: 'Fácil',
                ),
                LevelButtonWidget(
                  label: 'Médio',
                ),
                LevelButtonWidget(
                  label: 'Difícil',
                ),
                LevelButtonWidget(
                  label: 'Perito',
                ),
              ],
            ),
            SizedBox(height: 24,),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                crossAxisCount: 2,
                
                children: controller.quiz!.map((e) => QuizCardWidget(
                  title: e.title,
                  completed: "${e.questionAnswered}/${e.questions.length}",
                  percent: e.questionAnswered/e.questions.length,

                )
                ).toList(),
              ),
            ),
          ],
        ),
      ),
      
    );
    }else{
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}