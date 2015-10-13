import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_rest/shelf_rest.dart';

void main() {
  var myRouter = router()
    ..get('accounts/{accountId}', (String accountId) => new Account.build(accountId: accountId));

  printRoutes(myRouter);

  io.serve(myRouter.handler, 'localhost', 8081);
}

class Account {
  final String accountId;

  Account.build({this.accountId});

  Account.fromJson(Map json) : this.accountId = json['accountId'];

  Map toJson() => {'accountId': accountId};
}