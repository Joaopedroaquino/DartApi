import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  var pipeline = Pipeline()..addMiddleware(log());

  final server = await io.serve(_handler, '0.0.0.0', 4466);

  print('Online - ${server.address.address}:${server.port} ');
}

Middleware log() {
  return (handler) {
    return (request) {
      print('solicitado: ${request.url}');
      return handler(request);
    };
  };
}

FutureOr<Response> _handler(Request request) {
  print(request);
  return Response(200, body: 'corpo');
}
