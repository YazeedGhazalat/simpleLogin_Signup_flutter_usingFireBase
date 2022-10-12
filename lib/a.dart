import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;

class aPage extends StatefulWidget {
  const aPage({super.key});
  static const String screenRoute = "aPage";
  @override
  State<aPage> createState() => _aPageState();
}

class _aPageState extends State<aPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() {
                _auth.signOut();
                Navigator.pop(context);
              }),
              icon: Icon(
                Icons.sign_language_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(),
    );
  }
}
