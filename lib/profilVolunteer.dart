import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:haf/signin.dart';

import 'new_account.dart';
/*  Color:
//124565
//0xff64c4b9*/
class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome again',
      theme: new ThemeData(primarySwatch: Colors.blueGrey,),
      home:Blog(),
    
          );
        }
      }
      
      class Blog extends StatefulWidget {
        @override
        _BlogState createState() => _BlogState();
      }
      
      class _BlogState extends State<Blog> {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
          //  backgroundcolor: Colors.white,
          appBar: AppBar(title: Text('Welcome again hero'),
          backgroundColor: Color(0xff64c4b9),),
          drawer: new Drawer(
            child:
            Container(
               // color: Color(0xff64c4b9),
color: Colors.white,
              child: new ListView(
              children: <Widget>[

UserAccountsDrawerHeader(accountName: Text(" Ketfi Raniya",style: TextStyle(fontSize: 18,)), 
accountEmail: Text("Ketfiranya@esi.dz",style: TextStyle(fontSize: 18),),
currentAccountPicture:  Container(
    
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
          fit: BoxFit.fill,
          image:AssetImage('assets/user.jpg'))
                 )
),
decoration: new BoxDecoration(
  color: Color(0xff64c4b9)
//color:Colors.blueGrey
),
),

SizedBox(height:30),
new ListTile(
                title: Text("My account",style: TextStyle(color: Color(0xff64c4b9),),),
                trailing:Icon(Icons.account_circle,color: Colors.blueGrey,)
              ),
              
              new ListTile(
                title: Text("Join a Volunteer Activity",style: TextStyle(color: Color(0xff64c4b9),),),
                trailing:Icon(Icons.map,color: Colors.blueGrey,)
              ),
              
new ListTile(
                title: Text("Share Your experience",style: TextStyle(color: Color(0xff64c4b9),),),
                trailing:Icon(Icons.share,color: Colors.blueGrey,)
              ),

              new ListTile(
                title: Text("E-Volunteering",style: TextStyle(color: Color(0xff64c4b9),),),
                trailing:Icon(Icons.laptop,color: Colors.blueGrey,)
              ),
              
new ListTile(
                title: Text("Associations near me ",style: TextStyle(color: Color(0xff64c4b9),),),
                trailing:Icon(Icons.location_city,color: Colors.blueGrey,)
              ),
              new ListTile(
                                trailing:Icon(Icons.question_answer,color: Colors.blueGrey,),

                title: Text("About Us",style: TextStyle(color: Color(0xff64c4b9),),),
                //trailing:Icon(Icons.arrow_forward,color: Colors.blueGrey,)
              ),
              SizedBox(height:100),
 new ListTile(
                                trailing:Icon(Icons.arrow_back ,color: Colors.blueGrey,),

                title:Center(
                  child:MaterialButton(
                                        onPressed: (){
                            Navigator.push( context,   MaterialPageRoute(builder: (context) => Signin()),
            );
                                        },//since this is only a UI app
                                        child: Text('Log Out',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'SFUIDisplay',
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        color: Color(0xff64c4b9),
                                        elevation: 0,
                                        height: 60,
                                                            minWidth: 200
                                                            ,
                    
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),)
                //trailing:Icon(Icons.arrow_forward,color: Colors.blueGrey,)
 )),
              ]
            ),
          )),



          body: Container(child:new Center(child:Text("Blog"))),
          );
        }
      }