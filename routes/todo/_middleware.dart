import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:todo_list/generated/prisma/client.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/repository/todo_repository.dart';
import 'package:todo_list/repository/user_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideTodoRepository()).use(_authenticatedProvider());
}

Middleware _provideTodoRepository() {
  return provider<TodoRepository>(
    (context) => TodoRepository(context.read<PrismaClient>()),
  );
}

Middleware _authenticatedProvider() {
  return bearerAuthentication<User>(
    authenticator: (context, token) async {
      return UserRepository(context.read<PrismaClient>())
          .fetchFromAccessToken(token: token);
    },
  );
}
