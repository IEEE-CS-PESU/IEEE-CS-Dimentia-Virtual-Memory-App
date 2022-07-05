import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'screens/LoginScreen.dart' ;
import 'screens/MainScreen.dart' ;
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_options.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: 'dementia',
    home: _handleWindowDisplay(),
  ));
}


//to check if user has signed in or not, to show mainscreen or login screen

Widget _handleWindowDisplay() {
  return StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),      //onAuthStateChanged,
    builder: (BuildContext context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: Text("Loading "),);
      }
      else{
        if (snapshot.hasData) {
          return const MainScreen();
        }
        else {
          return const LoginScreen();
        }
      }

    },);
}























/*
//void main(){
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final db = FirebaseFirestore.instance;


class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Login App',
      home : LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal : 18.0 ),
          children: <Widget> [
            Column(
              children: <Widget> [
                SizedBox(height: 60, ),
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 40,),
                Text('Material Login', style: TextStyle(fontSize: 25,color:
                Colors.lightBlueAccent),)
              ],
            ),
            SizedBox(height: 60.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                ButtonTheme(
                    height: 50,
                    disabledColor: Colors.grey,
                    child: RaisedButton(
                      disabledElevation: 4.0,
                      onPressed: null,
                      child: Text('Login', style: TextStyle(fontSize: 20, color:
                      Colors.white)),
                    ),),
                SizedBox(height: 20,),
                Text("New User? sign up here")
              ],
            )
          ],
        ),
      ),
    );
  }
}
*/
