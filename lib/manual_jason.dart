import 'dart:convert';

import 'package:dart_jason_example/user.dart';

void main() {
  String jsonString = ''' 
    {
      "name":"mc",
      "email":"josep@gamil.com",
      "age":35
    }
''';
    Map<String, dynamic> user = jsonDecode(jsonString);
    final userObj = User.fromMap(user);

    print('name: ${user['name']}');
    print('age: ${user['age']}');

    print ('name: ${userObj.name}');
    print('email: ${userObj.email}');

    print(user);
    String userString = jsonEncode(user);
    print(userString);

}