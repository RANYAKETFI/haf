import 'package:flutter/material.dart';
import 'package:haf/models/volunteer.dart';
import 'package:haf/screens/home/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
// return either home or authentiwate
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<Volunteer>(context);

    if (user!=null)
    {
return Home();
    }
    else 
    {
    return Authenticate(
    );
    }
  }
}