import 'awnsers_model.dart';

class QuestionModel {
  final String title;
  final List<AwnsersModel> awnsers;

  QuestionModel({
    required this.title,
    required this.awnsers,
  }) : assert(awnsers.length == 4);
}
