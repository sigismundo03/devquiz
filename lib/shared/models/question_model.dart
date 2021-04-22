import 'dart:convert';

import 'awnsers_model.dart';

class QuestionModel {
  final String title;
  final List<AwnsersModel> awnsers;

  QuestionModel({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnsers': awnsers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awnsers: List<AwnsersModel>.from(map['awnsers']?.map((x) => AwnsersModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));
}
