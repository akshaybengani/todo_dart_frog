import 'package:orm/orm.dart';
import 'package:todo_list/generated/prisma/client.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/generated/prisma/prisma.dart';
import 'package:uuid/uuid.dart';

class TodoRepository {
  final PrismaClient prisma;

  TodoRepository(this.prisma);

  Future<List<Map<String, dynamic>>> getTodos() async {
    final todos = (await prisma.todo.findMany()).toList();
    final todosJson = todos.map((todo) => todo.toJson()).toList();
    return todosJson;
  }

  Future<Todo> createTodo({
    required String title,
    required String description,
    required bool isCompleted,
  }) async {
    final response = await prisma.todo.create(
      data: PrismaUnion.$1(
        TodoCreateInput(
          id: Uuid().v4(),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          title: title,
          description: description,
          isCompleted: isCompleted,
        ),
      ),
    );

    return response;
  }

  Future<Todo?> findTodoById(String id) async {
    final todo = await prisma.todo.findUnique(
      where: TodoWhereUniqueInput(id: id),
    );
    return todo;
  }

  Future<Todo?> updateTodoById({
    required String id,
    required String title,
    required String description,
    required bool isCompleted,
  }) async {
    Todo? todo = await prisma.todo.update(
      data: PrismaUnion.$1(
        TodoUpdateInput(
          title: PrismaUnion.$1(title),
          description: PrismaUnion.$1(description),
          isCompleted: PrismaUnion.$1(isCompleted),
        ),
      ),
      where: TodoWhereUniqueInput(id: id),
    );

    return todo;
  }

  Future<Todo?> deleteTodoById(String id) async {
    final todo = await prisma.todo.delete(
      where: TodoWhereUniqueInput(id: id),
    );
    return todo;
  }
}
