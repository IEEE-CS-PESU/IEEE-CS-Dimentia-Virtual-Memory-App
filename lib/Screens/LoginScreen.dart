
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
      body: Center(
        child: Center(
        child: Container(
        width: 300,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration.collapsed(hintText: "Email", border: UnderlineInputBorder()),
              onChanged: (value) {
                setState( () { _email=value; });
                debugPrint(_email);
              },
            ),
            TextField(
              decoration: const InputDecoration.collapsed(hintText: "Password", border: UnderlineInputBorder()),
              onChanged: (value) {
                setState( () { _password=value; });
                debugPrint(_password);
              },
            ),
            ElevatedButton(child: const Text("Sign in"), onPressed: () {
              FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _email, password: _password).then((onValue) {}
              );}/*.catchError((error) {
                    debugPrint("Error: "+error);
                })*/
            ),
          ],
        ),

        ),
      ),
    ));
  }
}