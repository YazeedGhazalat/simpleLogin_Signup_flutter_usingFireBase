import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:lec11_10/a.dart';
import 'package:lec11_10/loginscreen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

// Ideal time to initialize

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {aPage.screenRoute: (context) => aPage()},
  ));
//...
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLoginScreen();
  }
}
