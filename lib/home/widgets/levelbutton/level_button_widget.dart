import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key ? key, required this.label}) 
   : assert(["Fácil","Médio","Difícil","Perito"].contains(label)) ,super(key: key);


  final config = {
    "Fácil":{
      "color": AppColors.levelButtonFacil,
      "boderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },

    "Médio":{
      "color": AppColors.levelButtonMedio,
      "boderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    
    "Difícil":{
      "color": AppColors.levelButtonDificil,
      "boderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },

    "Perito":{
      "color": AppColors.levelButtonPerito,
      "boderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    }
  };
  
  Color get color => config[label]!["color"]!;
  Color get boderColor => config[label]!["boderColor"]!;
  Color get fontColor => config[label]!["fontColor"]!;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ,
        border: Border.fromBorderSide(BorderSide(color: boderColor),),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color:  fontColor,
            fontSize: 13,
              
          
          ),
        
        ),
      ),
      
    );
  }
}