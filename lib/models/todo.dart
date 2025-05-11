import 'package:todo_list/helpers/json_converters.dart';
import 'package:uuid/uuid.dart';

class Todo {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String id;
  final String? title;
  final String? description;
  final DateTime? date;
  final bool isCompleted;

  Todo({
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    this.title,
    this.description,
    this.date,
    this.isCompleted = false,
  });

  static Todo createFromJson(Map<String, dynamic> json) {
    try {
      return Todo(
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        id: Uuid().v4(),
        title: jsonToString("title", json),
        description: jsonToString("description", json),
        date: jsonToDateTime("date", json),
        isCompleted: jsonToBool("isCompleted", json) ?? false,
      );
    } catch (e) {
      throw FormatException("Invalid Todo", e);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
      'title': title,
      'description': description,
      'date': date?.toIso8601String(),
      'isCompleted': isCompleted,
    };
  }

  Todo copyWithFromJson(
    Map<String, dynamic> json,
  ) {
    try {
      return Todo(
        createdAt: createdAt,
        updatedAt: DateTime.now(),
        id: id,
        title: jsonToString("title", json) ?? title,
        description: jsonToString("description", json) ?? description,
        date: jsonToDateTime("date", json) ?? date,
        isCompleted: jsonToBool("isCompleted", json) ?? isCompleted,
      );
    } catch (e) {
      throw FormatException("Invalid Todo", e);
    }
  }
}
