import 'package:chat_menssager/auth/login.dart';
import 'package:chat_menssager/pages/login/registerpage.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage( onTap: togglePages); // Adicionando parênteses para chamar a função
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
