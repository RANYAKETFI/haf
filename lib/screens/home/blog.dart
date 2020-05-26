import 'package:flutter/material.dart';
import 'package:haf/models/Experience.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'experiencetile.dart';
class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
      final experiences=Provider.of<List<Experience>>(context);
experiences.forEach((element) { print(element.statut);});
    return ListView.builder(itemCount: experiences.length,
    itemBuilder: (context,index){
return (ExperienceTile(experience: experiences[index]));
    },
    
    
    );
  }
}