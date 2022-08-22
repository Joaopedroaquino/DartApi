import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/user', _getAllUser),
        Route.get('/user/:id', _getAllUser),
        Route.get('/user', _createUser),
      ];

  FutureOr<Response> _getAllUser() {
    return Response.ok('ok');
  }

  FutureOr<Response> _getUserByid(ModularArguments arguments) {
    return Response.ok('User: ${arguments.params['id']}');
  }

  FutureOr<Response> _createUser(ModularArguments arguments) {
    return Response.ok('User: ${arguments.params['id']}');
  }
}
