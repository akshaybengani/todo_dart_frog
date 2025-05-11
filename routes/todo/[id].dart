import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/controllers/todo_controller.dart';
import 'package:todo_list/errors/error_responses.dart';
import 'package:todo_list/errors/exceptions.dart';
import 'package:todo_list/models/todo.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.get => _getTodoById(context, id),
    HttpMethod.put => _updateTodoById(context, id),
    HttpMethod.delete => _deleteTodoById(context, id),
    _ => Future.value(ErrorResponses.methodNotAllowed()),
  };
}

Future<Response> _getTodoById(RequestContext context, String id) async {
  final todos = context.read<TodoController>().todos;

  try {
    final todo = todos.firstWhere(
      (todo) => todo.id == id,
      orElse: () => throw TodoNotFoundException(id),
    );
    return Response.json(body: todo.toJson());
  } catch (e) {
    if (e is TodoNotFoundException) {
      return ErrorResponses.notFound(e.toString());
    } else {
      return ErrorResponses.internalServerError();
    }
  }
}

Future<Response> _updateTodoById(RequestContext context, String id) async {
  final bodyString = await context.request.body();
  if (bodyString.isEmpty) {
    return ErrorResponses.emptyRequestBody();
  }

  final todos = context.read<TodoController>().todos;

  final Todo todo;

  try {
    todo = todos.firstWhere(
      (todo) => todo.id == id,
      orElse: () => throw TodoNotFoundException(id),
    );
  } catch (e) {
    if (e is TodoNotFoundException) {
      return ErrorResponses.notFound(e.toString());
    } else {
      return ErrorResponses.internalServerError();
    }
  }

  try {
    final bodyJson = jsonDecode(bodyString) as Map<String, dynamic>;

    final Todo updatedTodo = todo.copyWithFromJson(bodyJson);

    todos[todos.indexOf(todo)] = updatedTodo;

    return Response.json(body: updatedTodo.toJson());
  } catch (e) {
    if (e is FormatException) {
      return ErrorResponses.jsonDecodeError();
    } else {
      return ErrorResponses.internalServerError();
    }
  }
}

Future<Response> _deleteTodoById(RequestContext context, String id) async {
  final todos = context.read<TodoController>().todos;

  final Todo todo;

  try {
    todo = todos.firstWhere(
      (todo) => todo.id == id,
      orElse: () => throw TodoNotFoundException(id),
    );
  } catch (e) {
    if (e is TodoNotFoundException) {
      return ErrorResponses.notFound(e.toString());
    } else {
      return ErrorResponses.internalServerError();
    }
  }
  todos.remove(todo);
  return Response.json(body: todo.toJson());
}
