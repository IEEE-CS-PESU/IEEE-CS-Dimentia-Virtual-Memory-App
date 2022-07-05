import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key: key);
  @override

    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    ),
          body: ButtonBar(
            // ignore: sort_child_properties_last
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: const Text('About  Me', style: TextStyle(color: Colors.white, fontSize: 20))),
              ElevatedButton(onPressed: () {}, child: const Text('  Pictures  ', style: TextStyle(color: Colors.white, fontSize: 20))),
              ElevatedButton(onPressed: () {}, child: const Text('My Mood  ', style: TextStyle(color: Colors.white, fontSize: 20))),
              ElevatedButton(onPressed: () {}, child: const Text('Emergency', style: TextStyle(color: Colors.white, fontSize: 20))),
            ],
            alignment: MainAxisAlignment.center,
            buttonHeight: 50,
            buttonMinWidth: 100,
            buttonPadding: const EdgeInsets.all(100), //EdgeInsets.fromLTRB(10, 90, 10, 10),
            //buttonPadding: EdgeInsets.only(top: 20),
            mainAxisSize: MainAxisSize.max,


    ),
    );
  }
  }
