import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LoginPage()));

class PawveraLogic {
  bool validateLogin(String email, String password) {
    if (email.contains('@') && password.length >= 6) return true;
    return false;
  }

  bool validateAddPet(String name, String breed) {
    if (name.isNotEmpty && breed.isNotEmpty) return true;
    return false;
  }
}

class LoginPage extends StatelessWidget {
  final logic = PawveraLogic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PawVera Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // تجربة المنطق البرمجي
            bool isValid = logic.validateLogin("user@pawvera.com", "123456");
            print("Login status: $isValid");
          },
          child: Text("Test Login Logic"),
        ),
      ),
    );
  }
}
