import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/user', _getAllUser),
        Route.get('/user/:id', _getAllUser),
        Route.post('/user', _createUser),
        Route.put('/user', _createUser),
        Route.delete('/user/:id', _getAllUser),
      ];

  FutureOr<Response> _getAllUser() {
    return Response.ok('ok');
  }

  FutureOr<Response> _getUserByid(ModularArguments arguments) {
    return Response.ok('User: ${arguments.params['id']}');
  }

  FutureOr<Response> _createUser(ModularArguments arguments) {
    return Response.ok('User: ${arguments.data}');
  }

  FutureOr<Response> _updateUser(ModularArguments arguments) {
    return Response.ok('User: ${arguments.data}');
  }
}
