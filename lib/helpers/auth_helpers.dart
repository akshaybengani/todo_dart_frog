import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:todo_list/constants.dart';

String generateHash(String input) {
  return sha256.convert(utf8.encode(input)).toString();
}

Future<String> generateJWT({required String id}) async {
  final jwt = JWT(
    {
      "user": {"id": id},
    },
  ).sign(SecretKey(JWT_SIGN_KEY));

  return jwt;
}

Future<bool> verifyJWT({required String token}) async {
  final JWT? jwt = JWT.tryVerify(token, SecretKey(JWT_SIGN_KEY));
  return jwt != null;
}
