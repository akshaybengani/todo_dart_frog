class Todo {
  const Todo({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.isCompleted,
  });

  factory Todo.fromJson(Map json) => Todo(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        title: json['title'],
        description: json['description'],
        isCompleted: json['isCompleted'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? title;

  final String? description;

  final bool? isCompleted;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };
}

class User {
  const User({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        email: json['email'],
        password: json['password'],
      );

  final String? id;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? email;

  final String? password;

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'email': email,
        'password': password,
      };
}
