import 'package:angular2/core.dart';

@Component(
  selector: 'my-auth',
  templateUrl: 'auth_component.html'
)

class AuthComponent {
  String username;
  String password;
  List<String> errors = [];

  bool validate() {
    if(username == null || password == null) {
      errors.add('fields not filled out');
      return false;
    }
    return true;
  }

  void signUpClicked() {
    if(validate()) {
      print("all good");
    }
  }
}
