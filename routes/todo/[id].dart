import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/errors/error_responses.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/helpers/json_converters.dart';
import 'package:todo_list/repository/todo_repository.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.get => _getTodoById(context, id),
    HttpMethod.put => _updateTodoById(context, id),
    HttpMethod.delete => _deleteTodoById(context, id),
    _ => Future.value(ErrorResponses.methodNotAllowed()),
  };
}

Future<Response> _getTodoById(RequestContext context, String id) async {
  final todoRepository = context.read<TodoRepository>();

  Todo? todo = await todoRepository.findTodoById(id);

  if (todo == null) {
    return ErrorResponses.notFound('Todo with id $id not found');
  }
  return Response.json(body: todo.toJson());
}

Future<Response> _updateTodoById(RequestContext context, String id) async {
  final bodyString = await context.request.body();
  if (bodyString.isEmpty) {
    return ErrorResponses.emptyRequestBody();
  }
  final todoRepository = context.read<TodoRepository>();

  try {
    final json = jsonDecode(bodyString) as Map<String, dynamic>;

    Todo? todo = await todoRepository.findTodoById(id);

    if (todo == null) {
      return ErrorResponses.notFound('Todo with id $id not found');
    }

    Todo? response = await todoRepository.updateTodoById(
      id: id,
      title: jsonToString("title", json) ?? todo.title ?? "",
      description: jsonToString("description", json) ?? todo.description ?? "",
      isCompleted: jsonToBool("title", json) ?? todo.isCompleted ?? false,
    );

    return Response.json(body: response?.toJson());
  } catch (e) {
    return ErrorResponses.internalServerError();
  }
}

Future<Response> _deleteTodoById(RequestContext context, String id) async {
  final todoRepository = context.read<TodoRepository>();

  try {
    Todo? todo = await todoRepository.findTodoById(id);

    if (todo == null) {
      return ErrorResponses.notFound('Todo with id $id not found');
    }

    Todo? response = await todoRepository.deleteTodoById(id);

    if (response == null) {
      return ErrorResponses.notFound('Todo with id $id not found');
    }

    return Response.json(body: response.toJson());
  } catch (e) {
    return ErrorResponses.internalServerError();
  }
}
