import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lec11_10/a.dart';
import 'package:lec11_10/widgets/my_button.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text("Welcome to our app"),
                ),
                Divider(
                  height: 25,
                ),
                Text("email"),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("password"),
                TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Enter Your Passsord",
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  // onSubmitted: (value) async {
                  //   try {
                  //     var authenticationobject = FirebaseAuth.instance;

                  //     UserCredential myUser = await authenticationobject
                  //         .createUserWithEmailAndPassword(
                  //             email: email.text, password: password.text);
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content: Text("added successfully")));
                  //   } catch (e) {
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content: Text("sorry there is an error")));
                  //   }
                  // },
                ),
                Divider(height: 25),
                MyButton(
                  color: Colors.green[800]!,
                  title: "Sign up",
                  onPressed: () async {
                    try {
                      var authenticationobject = FirebaseAuth.instance;

                      UserCredential myUser = await authenticationobject
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("added successfully")));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("sorry there is an error")));
                    }
                  },
                ),
                MyButton(
                    color: Colors.red,
                    onPressed: () async {
                      try {
                        var authenticationobject = FirebaseAuth.instance;

                        UserCredential myUser = await authenticationobject
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login successfully")));
                        Navigator.pushNamed(context, aPage.screenRoute);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("sorry there is an error")));
                      }
                    },
                    title: "Login")
              ]),
        ),
      ),
    );
  }
}
