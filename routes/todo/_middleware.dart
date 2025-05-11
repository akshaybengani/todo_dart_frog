import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/generated/prisma/client.dart';
import 'package:todo_list/repository/todo_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideTodoRepository());
}

Middleware _provideTodoRepository() {
  return provider<TodoRepository>(
      (context) => TodoRepository(context.read<PrismaClient>()));
}
