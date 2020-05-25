import 'package:flutter/material.dart';
import 'package:haf/models/volunteer.dart';
import 'package:haf/screens/wrapper.dart';
import 'package:haf/services/auth.dart';
import 'acc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Volunteer>.value(
      value:AuthService().user,
          child: MaterialApp(
      home: Wrapper()
      ),
    );
  }
  }
/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new Acc(),
    );
  }
}*/
