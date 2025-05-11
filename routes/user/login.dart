import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/errors/error_responses.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/helpers/auth_helpers.dart';
import 'package:todo_list/helpers/json_converters.dart';
import 'package:todo_list/repository/user_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _loginUser(context),
    _ => Future.value(ErrorResponses.methodNotAllowed()),
  };
}

Future<Response> _loginUser(RequestContext context) async {
  final bodyString = await context.request.body();

  if (bodyString.isEmpty) {
    return ErrorResponses.emptyRequestBody();
  }

  try {
    final json = jsonDecode(bodyString) as Map<String, dynamic>;

    final String? email = jsonToString("email", json);
    final String? password = jsonToString("password", json);

    if (email == null || password == null) {
      return ErrorResponses.missingFields();
    }

    final userRepository = context.read<UserRepository>();

    User? user = await userRepository.loginUser(email: email, password: password);

    if (user == null) {
      return Response(
        statusCode: 401,
        body: "Invalid credentials. Please check your email and password.",
      );
    }

    return Response.json(
      body: {
        "user": {
          "id": user.id,
          "email": user.email,
          "created_at": user.createdAt?.toIso8601String(),
        },
        "token": await generateJWT(id: user.id!),
      },
    );
  } catch (e) {
    return ErrorResponses.internalServerError();
  }
}
