class ExerciseModel {
  String id;
  String name;
  String howToDo;
  String title;
  String? photoUrl;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.howToDo,
    required this.title,
  });

  ExerciseModel.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      name = map['name'],
      howToDo = map['howToDo'],
      title = map['title'],
      photoUrl = map['photoUrl'];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "howToDo": howToDo,
      "title": title,
      "photoUrl": photoUrl,
    };
  }
}
