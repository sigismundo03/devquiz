
import 'package:flutter/material.dart';

import 'widgets/apparbar/app_bar_widget.dart';
import 'widgets/levelbutton/level_button_widget.dart';
import 'widgets/quizcard/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  
  HomePage({ Key ? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
                
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                   QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}