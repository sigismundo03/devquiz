import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border,  
            ),
           ),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            
            SizedBox(height: 18,),
            
            Text(
              'Gerenciamneto de Estado',
              style: AppTextStyles.heading15,
            ),

            SizedBox(height: 18,),
            
            Row(
              children: [
                Expanded(
                  child: Text(
                    '3 de 10',
                    style: AppTextStyles.body11,  
                  ),
                ),
                 Expanded(
                   flex: 2,
                  child: ProgressIndicatorWidget(
                    value: 0.3,
                  ),
                ),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}