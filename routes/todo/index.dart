import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/controllers/todo_controller.dart';
import 'package:todo_list/errors/error_responses.dart';
import 'package:todo_list/models/todo.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getTodos(context),
    HttpMethod.post => _createTodo(context),
    _ => Future.value(ErrorResponses.methodNotAllowed()),
  };
}

Future<Response> _getTodos(RequestContext context) async {
  final controller = context.read<TodoController>();

  final todosJson = controller.todos.map((todo) => todo.toJson()).toList();
  return Response.json(body: todosJson);
}

Future<Response> _createTodo(RequestContext context) async {
  final bodyString = await context.request.body();

  if (bodyString.isEmpty) {
    return ErrorResponses.emptyRequestBody();
  }

  try {
    final bodyJson = jsonDecode(bodyString) as Map<String, dynamic>;
    final todo = Todo.createFromJson(bodyJson);
    context.read<TodoController>().todos.add(todo);
    return Response.json(body: todo.toJson());
  } catch (e) {
    if (e is FormatException) {
      return ErrorResponses.jsonDecodeError();
    } else {
      return ErrorResponses.internalServerError();
    }
  }
}
