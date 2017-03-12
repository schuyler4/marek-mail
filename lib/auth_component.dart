import 'package:angular2/core.dart';

import 'user_service.dart';
import 'user.dart';

@Component(
  selector: 'my-auth',
  templateUrl: 'auth_component.html',
  providers: const [UserService]
)

class AuthComponent {
  String username;
  String password;
  List<String> errors = [];
  User user;

  final UserService _userService;
  AuthComponent(this._userService);

  void logInClicked() {
    user = _userService.getUser(username, password);
    if(user != null) {
      print('all good');
    } else {
      errors.add('user not found');
    }
  }

  void signUpClicked() {
    print('sign up was clicked');
  }
}
