import 'package:flutter/material.dart';
import 'package:haf/profilVolunteer.dart';
import 'package:haf/signin.dart';
class Chose extends StatefulWidget {
  @override
  _ChoseState createState() => _ChoseState();
}

class _ChoseState extends State<Chose> {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: <Widget>[
Scaffold(
  backgroundColor: Colors.white,
  body:Container(
    
    child:Center(child:
        Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
                     Image(image: AssetImage('assets/logo.jpg'),height: 150,width: 150,),
                     SizedBox(height:100),

            Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: MaterialButton(
                                        onPressed: (){
                            Navigator.push( context,   MaterialPageRoute(builder: (context) => Association()),
            );
                                        },//since this is only a UI app
                                        child: Text('ASSOCIATION',
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
                                        ),)),
                                        Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: MaterialButton(
                                        onPressed: (){
                            Navigator.push( context,   MaterialPageRoute(builder: (context) => NewAccount()),
            );
                                        },//since this is only a UI app
                                        child: Text('VOLUNTEER',
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
                                        ),))

        ],))))
      ],
    );
  }
}
class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  
  Widget build(BuildContext context)
   {
        return
        Stack(
          children:[
           Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/bg5.jpg"
             ),
             fit: BoxFit.cover,
           )
         )),
          Scaffold(
              backgroundColor: Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
              body:// Center(child: 
               Container(
                          // alignment: Alignment.center,
    
              child:Column(
    
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    
      children: <Widget>[
    
              SizedBox(height: 50),
              Center(child:
Image(image: AssetImage('assets/logo.jpg'),height: 70,width: 70)  )
,
             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Username',
                                  prefixIcon: Icon(Icons.person_outline),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                          SizedBox(height: 10),

             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Email',
                                  prefixIcon: Icon(Icons.email),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                          SizedBox(height: 10),

             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                                            SizedBox(height: 10),

                  
         TextFormField(
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff109094)
                              )
                            ),
                            labelText: 'Phone Number',
                              prefixIcon: Icon(Icons.phone),

                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.grey)
                          ),
                        ),

                                                SizedBox(height: 15),
   Padding(padding: EdgeInsets.only(top: 10),
   
                  child: MaterialButton(
                    onPressed:        (){  
                       Navigator.push( context,   MaterialPageRoute(builder: (context) => Profil()),
            );},//since this is only a UI app
                                        child: Text('SIGN UP',
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
                    
                                        textColor:  Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),)),

  ],   

          //  ) 
             ))
                  ),
                ],)
              ;
            }
}
class Association extends StatefulWidget {
  @override
  _AssociationState createState() => _AssociationState();
}

class _AssociationState extends State<Association> {
  @override
 
  Widget build(BuildContext context)
   {
        return
        Stack(
          children:[
         /*  Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/bg5.jpg"
             ),
             fit: BoxFit.cover,
           )
         )),*/
          Scaffold(
              backgroundColor: Colors.white, // <-- SCAFFOLD WITH TRANSPARENT BG
              body:// Center(child: 
               Container(
                          // alignment: Alignment.center,
    
              child:Column(
    
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    
      children: <Widget>[
    
              SizedBox(height: 50),
              Center(child:
Image(image: AssetImage('assets/logo.jpg'),height: 100,width: 100)  )
,
             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Association name',
                                  prefixIcon: Icon(Icons.person_outline),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                          SizedBox(height: 10),

             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Email',
                                  prefixIcon: Icon(Icons.email),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                          SizedBox(height: 10),

             TextFormField(
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff109094)
                                  )
                                ),
                                labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
    
                                labelStyle: TextStyle(fontSize: 15,
                                color: Colors.grey)
                              ),
                            ),
                                                            SizedBox(height: 10),

                  
         TextFormField(
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff109094)
                              )
                            ),
                            labelText: 'Phone Number',
                              prefixIcon: Icon(Icons.phone),

                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.grey)
                          ),
                        ),

                                                SizedBox(height: 15),
                                                   TextFormField(
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff109094)
                              )
                            ),
                            labelText: 'Adresse',
                              prefixIcon: Icon(Icons.location_city),

                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.grey)
                          ),
                        ),
                                                                SizedBox(height:40),

   Padding(padding: EdgeInsets.only(top: 10),
   
                  child: MaterialButton(
                    onPressed:        (){  
                       Navigator.push( context,   MaterialPageRoute(builder: (context) => Profil()),
            );},//since this is only a UI app
                                        child: Text('SIGN UP',
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
                    
                                        textColor:  Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),)),

  ],   

          //  ) 
             ))
                  ),
                ],)
              ;
            }
}