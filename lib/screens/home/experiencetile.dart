import 'package:flutter/material.dart';
import 'package:haf/models/Experience.dart';

class ExperienceTile extends StatelessWidget {
  @override
     final Experience experience;
  ExperienceTile({this.experience});
  Widget build(BuildContext context) {
     return Padding(padding: EdgeInsets.only(top:8.0),
     child:Card(
       margin:EdgeInsets.fromLTRB(20, 6, 20, 0),
       child:
       Column(children :<Widget>[
       ListTile(
leading:CircleAvatar(
  radius:50,
  backgroundColor: Colors.black,
) ,
title: Text(experience.uid),
subtitle: Text(experience.statut),

       ),
Image(image: NetworkImage(experience.photoURL.toString()))       ]
     ))
     );
  }
}