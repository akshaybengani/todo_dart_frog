class TodoNotFoundException implements Exception {
  final String todoId;
  TodoNotFoundException(this.todoId);

  @override
  String toString() {
    return 'Todo with ID "$todoId" not found.';
  }
}
