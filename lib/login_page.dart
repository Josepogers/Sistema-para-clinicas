import 'package:flutter/material.dart';
import 'mock/dados_login_fakes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? user = loginFakes[0]['nome'];
    String? password = loginFakes[0]['senha'];
    return Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            inherit: false,
            fontSize: 50,
          ),
        ),
        Text(
          'User: $user\n senha $password',
          style: TextStyle(
            color: Colors.white,
            inherit: false,
            fontSize: 50,
          ),
        ),
        Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'User'),
            )
          ],
        )
      ],
    );
  }
}
