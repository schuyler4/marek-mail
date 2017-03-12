import 'dart:async';

import 'package:angular2/core.dart';

import 'user.dart';
import 'mock_users.dart';

@Injectable()
class UserService {
  Future<List<User>> getUsers() async => await mockUsers;

  getUser(username, password) {
    for(var user in mockUsers) {
      if(user.username == username && user.password == password) {
        return user;
      }
    }
  }
}
