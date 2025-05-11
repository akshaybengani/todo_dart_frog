import 'package:orm/orm.dart';
import 'package:todo_list/generated/prisma/client.dart';
import 'package:todo_list/generated/prisma/model.dart';
import 'package:todo_list/generated/prisma/prisma.dart';
import 'package:todo_list/helpers/auth_helpers.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  final PrismaClient prisma;

  UserRepository(this.prisma);

  Future<User?> createUser({required String email, required String password}) async {
    User? user = await prisma.user.findUnique(where: UserWhereUniqueInput(email: email));

    if (user == null) {
      return await prisma.user.create(
        data: PrismaUnion.$1(
          UserCreateInput(
            id: Uuid().v4(),
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            email: email,
            password: generateHash(password),
          ),
        ),
      );
    }
    return null;
  }

  Future<User?> loginUser({required String email, required String password}) async {
    User? user = await prisma.user.findUnique(where: UserWhereUniqueInput(email: email));

    if (user != null && user.password == generateHash(password)) {
      return user;
    }
    return null;
  }

  Future<User?> fetchFromAccessToken({required String token}) async {
    (bool, dynamic) response = await verifyJWT(token: token);

    if (!response.$1) {
      return null;
    }
    final String? userid = response.$2["user"]["id"] as String?;

    if (userid == null) {
      return null;
    }

    return await prisma.user.findUnique(where: UserWhereUniqueInput(id: userid));
  }
}
