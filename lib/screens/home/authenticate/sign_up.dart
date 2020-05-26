import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:haf/models/volunteer.dart';
import 'package:haf/services/auth.dart';
import 'package:haf/services/database.dart';

class ChoseProfil extends StatefulWidget {
  @override
  _ChoseProfilState createState() => _ChoseProfilState();
}

class _ChoseProfilState extends State<ChoseProfil> {
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/logo.jpg'),
                  height: 150,
                  width: 150,
                ),
                SizedBox(height: 100),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewAssociation()),
                        );
                      }, //since this is only a UI app
                      child: Text(
                        'ASSOCIATION',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xff64c4b9),
                      elevation: 0,
                      height: 60,
                      minWidth: 200,

                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewVolunteer()),
                        );
                      }, //since this is only a UI app
                      child: Text(
                        'VOLUNTEER',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xff64c4b9),
                      elevation: 0,
                      height: 60,
                      minWidth: 200,

                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ))
              ],
            ))))
      ],
    );
  }
}


class NewVolunteer extends StatefulWidget {
  @override
  _NewVolunteerState createState() => _NewVolunteerState();
  }
  

class _NewVolunteerState extends State<NewVolunteer> {
  final AuthService _auth=AuthService();
  FirebaseUser user;
  UserData user1=UserData();
  final _formKey=GlobalKey<FormState>();
  String uid="";
   String email="";
  String password="";
  String username="";
  String phone="";
    String erreur="";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/bg5.jpg"),
          fit: BoxFit.cover,
        ))),
        Scaffold(
            backgroundColor:
                Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
            body: // Center(child:
                Container(
                    // alignment: Alignment.center,

                    child:Form(
                      key: _formKey,
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                SizedBox(height: 50),
                Center(
                    child: Image(
                        image: AssetImage('assets/logo.jpg'),
                        height: 70,
                        width: 70)),
                TextFormField( 
                  validator: (val)=>val.isEmpty ? 'Enter an email':null,
                  onChanged: (val){
setState(()=>username=val);
                                        },
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person_outline),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
                   onChanged: (val){
setState(()=>email=val);
                                        },
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
            validator: (val)=>val.length<6 ? 'password must have at least 6 caracters':null,

                   onChanged: (val){
setState(()=>password=val);
                                        },
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
                   onChanged: (val){
setState(()=>phone=val);
                                        },
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 15),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () async {
if(_formKey.currentState.validate())
{ 
dynamic result=await _auth.volunteerregister(email.toString().trim(),password.toString().trim());
if(result==null)
{
  print("erreur ");
  setState(() { erreur=" Registration failed";
  });
}
else
{
  //uid=user.
//user1=UserData();
}
}
else {
  //not valid 

}
                      }, //since this is only a UI app
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xff64c4b9),
                      elevation: 0,
                      height: 70,
                      minWidth: 200,

                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
                    SizedBox(height:30), Text(erreur),
              ],

              //  )
            )))),
      ],
    );
  }
}

class NewAssociation extends StatefulWidget {
  @override
  _NewAssociationState createState() => _NewAssociationState();
}

class _NewAssociationState extends State<NewAssociation> {
  @override
  final AuthService _auth=AuthService();
  // text state 
  String email="";
  String password="";
    String username="";
  String phone="";

  String erreur="";
  final _formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Stack(
      children: [
    
        Scaffold(
            backgroundColor: Colors.white, // <-- SCAFFOLD WITH TRANSPARENT BG
            body: // Center(child:
                Container(

                    child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                SizedBox(height: 50),
                Center(
                    child: Image(
                        image: AssetImage('assets/logo.jpg'),
                        height: 100,
                        width: 100)),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Association name',
                      prefixIcon: Icon(Icons.person_outline),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff109094))),
                      labelText: 'Adresse',
                      prefixIcon: Icon(Icons.location_city),
                      labelStyle: TextStyle(fontSize: 15, color: Colors.grey)),
                ),
                SizedBox(height: 40),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MaterialButton(
                      onPressed: () {
                        
                      }, //since this is only a UI app
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xff64c4b9),
                      elevation: 0,
                      height: 70,
                      minWidth: 200,

                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ],

              //  )
            ))),
      ],
    );
  }
}
