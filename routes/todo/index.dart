import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/errors/error_responses.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/helpers/json_converters.dart';
import 'package:todo_list/repository/todo_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getTodos(context),
    HttpMethod.post => _createTodo(context),
    _ => Future.value(ErrorResponses.methodNotAllowed()),
  };
}

Future<Response> _getTodos(RequestContext context) async {
  final todoRepository = context.read<TodoRepository>();
  final List<Map<String, dynamic>> todos = await todoRepository.getTodos();
  return Response.json(body: todos);
}

Future<Response> _createTodo(RequestContext context) async {
  final bodyString = await context.request.body();

  if (bodyString.isEmpty) {
    return ErrorResponses.emptyRequestBody();
  }

  try {
    final json = jsonDecode(bodyString) as Map<String, dynamic>;

    if (!json.containsKey("title") || !json.containsKey("description")) {
      return ErrorResponses.missingFields();
    }

    final todoRepository = context.read<TodoRepository>();

    Todo todo = await todoRepository.createTodo(
      title: jsonToString("title", json) ?? "",
      description: jsonToString("description", json) ?? "",
      isCompleted: jsonToBool("is_completed", json) ?? false,
    );

    return Response.json(body: todo.toJson());
  } catch (e) {
    return ErrorResponses.internalServerError();
  }
}
