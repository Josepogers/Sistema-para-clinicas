// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'mock/dados_login_fakes.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? usuario = loginFakes[0]['nome'];
    String? senha = loginFakes[0]['senha'];
    final TextEditingController _controllerUsuario = TextEditingController();
    final TextEditingController _controllerSenha = TextEditingController();
    String verificarUsuario() {
      if (_controllerUsuario.text == usuario) {
        debugPrint('O usuario é existente');
        return 'acesso autorizado';
      }
      return 'acesso negado';
    }

    String verificarSenha() {
      if (_controllerSenha.text == senha) {
        debugPrint('A senha é existente');
        return 'acesso autorizado';
      }
      return 'acesso negado';
    }

    void aoEntrar() {
      String permissaoUsuario = verificarUsuario();
      String permissaoSenha = verificarSenha();
      if (permissaoUsuario == 'acesso autorizado' &&
          permissaoSenha == 'acesso autorizado') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => HomePage(),
          ),
        );
        debugPrint(
            '${_controllerUsuario.text} Entrou com a senha ${_controllerSenha.text}');
      } else {
        debugPrint('$permissaoUsuario $permissaoSenha');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'Acesso negado',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ));
      }
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4A90E2),
              Color(0xFF145388)
            ], // Fundo azul degradê
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _controllerUsuario,
                  decoration: InputDecoration(
                    labelText: "Usuário",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _controllerSenha,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      aoEntrar();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A90E2),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Entrar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
