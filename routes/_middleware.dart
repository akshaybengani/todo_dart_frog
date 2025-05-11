import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/constants.dart';
import 'package:todo_list/generated/prisma/client.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(_provideDb());
}

final prisma = PrismaClient(datasourceUrl: DATABASE_URL);

Middleware _provideDb() {
  return provider<PrismaClient>((context) => prisma);
}
