import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'controllers/main_app_controller.dart';
import 'controllers/log_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _handleAuth(),
    );
  }

  Widget _handleAuth() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        return (!snapshot.hasData) ? LogController() : MainAppController();
      }
    );
  }

}