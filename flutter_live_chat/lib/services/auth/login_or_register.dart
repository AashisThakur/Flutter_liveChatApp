import 'package:flutter/material.dart';
import 'package:flutter_live_chat/pages/login_page.dart';
import 'package:flutter_live_chat/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially show login page
  bool showLoginPage = true;

  void toggleLoginPage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showLoginPage
        ? LoginPage(onTap: toggleLoginPage)
        : RegisterPage(onTap: toggleLoginPage);
  }
}
