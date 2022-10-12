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
        actions: [],
      ),
      body: Center(
        child: Container(
          child: IconButton(
              onPressed: (() {
                _auth.signOut();
                Navigator.pop(context);
              }),
              icon: Icon(
                size: 90,
                Icons.logout,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
