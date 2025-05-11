import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/generated/prisma/client.dart';
import 'package:todo_list/repository/user_repository.dart';

Handler middleware(Handler handler) {
  return handler.use(_provideUserRepository());
}

Middleware _provideUserRepository() {
  return provider<UserRepository>(
    (context) => UserRepository(context.read<PrismaClient>()),
  );
}
