import 'package:flutter/material.dart';
import 'package:haf/models/Experience.dart';
import 'package:haf/models/volunteer.dart';
import 'package:haf/services/auth.dart';
import 'package:haf/services/database.dart';
import 'package:provider/provider.dart';

import 'blog.dart';



class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
   final user=Provider.of<Volunteer>(context);

    return Container(

      child:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth=AuthService();

//final DataBaseService _db=DataBaseService();

  @override
  Widget build(BuildContext context) {
       final user=Provider.of<Volunteer>(context);
//print(_db.experiences.getDocuments();
    return StreamProvider<List<Experience>>.value(
      value: DataBaseService().experiences,
          child: Scaffold(
        //  backgroundcolor: Colors.white,
        appBar: AppBar(

          title: Center(child:FlatButton.icon(onPressed: null, icon: Icon(Icons.add,color:Colors.white), label: Text('share',style: TextStyle(color:Colors.white),))),
          backgroundColor: Color(0xff64c4b9),
        ),
        drawer: new Drawer(
            child: Container(
          // color: Color(0xff64c4b9),
          color: Colors.white,
          child: new ListView(children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(" Ketfi Raniya",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              accountEmail: Text(user.email,
              
              //  "Ketfiranya@esi.dz",
                style: TextStyle(fontSize: 18),
              ),
              currentAccountPicture: Container(
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/user.jpg')))),
              decoration: new BoxDecoration(color: Color(0xff64c4b9)
//color:Colors.blueGrey
                  ),
            ),
            SizedBox(height: 30),
            new ListTile(
                title: Text(
                  
                  "My account",
                  style: TextStyle(
                    color: Color(0xff64c4b9),
                  ),
                ),
                trailing: Icon(
                  Icons.account_circle,
                  color: Colors.blueGrey,
                )),
            new ListTile(
                title: Text(
                  "Join a Volunteer Activity",
                  style: TextStyle(
                    color: Color(0xff64c4b9),
                  ),
                ),
                trailing: Icon(
                  Icons.map,
                  color: Colors.blueGrey,
                )),
            new ListTile(
                title: Text(
                  "Share Your experience",
                  style: TextStyle(
                    color: Color(0xff64c4b9),
                  ),
                ),
                trailing: Icon(
                  Icons.share,
                  color: Colors.blueGrey,
                )),
            new ListTile(
                title: Text(
                  "E-Volunteering",
                  style: TextStyle(
                    color: Color(0xff64c4b9),
                  ),
                ),
                trailing: Icon(
                  Icons.laptop,
                  color: Colors.blueGrey,
                )),
            new ListTile(
                title: Text(
                  "Associations near me ",
                  style: TextStyle(
                    color: Color(0xff64c4b9),
                  ),
                ),
                trailing: Icon(
                  Icons.location_city,
                  color: Colors.blueGrey,
                )),
            new ListTile(
              trailing: Icon(
                Icons.question_answer,
                color: Colors.blueGrey,
              ),

              title: Text(
                "About Us",
                style: TextStyle(
                  color: Color(0xff64c4b9),
                ),
              ),
            ),
            SizedBox(height: 100),
            Center(
                  child: FlatButton.icon(
                    onPressed: ()async{
                    print("here");
                    _auth.signOut();
                  }

                  , icon: Icon(Icons.arrow_back), label: Text('Log Out',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'SFUIDisplay',
                      fontWeight: FontWeight.bold,),
                      )
                      ,color:Color(0xff64c4b9),
                  )
                 
                    ),
          ]),
        )),

        body: Container(
          child: new Center(child:
       

            
          Blog()
          //Experience()
        
         )),
      ),
    );
  }
}
