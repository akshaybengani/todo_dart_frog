import 'package:dart_frog/dart_frog.dart';

class ErrorResponses {
  static Response methodNotAllowed() {
    return Response(
      statusCode: 405,
      body: 'Request Method Not Allowed',
    );
  }

  static Response badRequest() {
    return Response(
      statusCode: 400,
      body: 'Bad Request',
    );
  }

  static Response notFound(String message) {
    return Response(
      statusCode: 404,
      body: message,
    );
  }

  static Response internalServerError() {
    return Response(
      statusCode: 500,
      body: 'Internal Server Error',
    );
  }

  static Response emptyRequestBody() {
    return Response(
      statusCode: 400,
      body: 'Empty Request Body',
    );
  }

  static Response jsonDecodeError() {
    return Response(
      statusCode: 400,
      body: 'Error Decoding JSON',
    );
  }

  static Response databaseError() {
    return Response(
      statusCode: 500,
      body: 'Database Error',
    );
  }

  static Response unauthorized() {
    return Response(
      statusCode: 401,
      body: 'Unauthorized',
    );
  }

  static Response forbidden() {
    return Response(
      statusCode: 403,
      body: 'Forbidden',
    );
  }

  static Response notImplemented() {
    return Response(
      statusCode: 501,
      body: 'Not Implemented',
    );
  }

  static Response missingFields() {
    return Response(
      statusCode: 400,
      body: 'Missing Fields',
    );
  }
}
