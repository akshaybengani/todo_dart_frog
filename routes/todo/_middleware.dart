import 'package:dart_frog/dart_frog.dart';
import 'package:todo_list/controllers/todo_controller.dart';

final _todoController = TodoController();

Handler middleware(Handler handler) {
  return handler.use(provider<TodoController>((context) => _todoController));
}
