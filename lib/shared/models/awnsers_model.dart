import 'dart:convert';

class AwnsersModel {
  final String title;
  final bool isRigth;

  AwnsersModel({
    required this.title,
    this.isRigth = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRigth': isRigth,
    };
  }

  factory AwnsersModel.fromMap(Map<String, dynamic> map) {
    return AwnsersModel(
      title: map['title'],
      isRigth: map['isRigth'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AwnsersModel.fromJson(String source) => AwnsersModel.fromMap(json.decode(source));
}
