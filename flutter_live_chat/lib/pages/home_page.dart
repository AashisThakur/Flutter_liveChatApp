import 'package:flutter/material.dart';
import 'package:flutter_live_chat/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //signOut button
  void singOut() {
    //get auth service
    final authservice = Provider.of<AuthService>(context, listen: false);

    authservice.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [
          IconButton(onPressed: singOut, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
