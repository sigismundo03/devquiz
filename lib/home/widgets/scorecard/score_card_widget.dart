import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          Column(
            children: [
              Text("Vamos Começa"),
              Text("Comple os desafios e avance em conhecimento "),
            ],
          ),
        ],
      ),
      
    );
  }
}