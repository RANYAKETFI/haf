import 'package:flutter/material.dart';
import 'package:haf/signin.dart';

// FIRST PAGE
class Acc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        //redirecttion to sign in page
        body: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signin1()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    )));
  }
}
