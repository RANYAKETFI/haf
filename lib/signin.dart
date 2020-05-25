import 'package:flutter/material.dart';
import 'package:haf/new_account.dart';
import 'package:haf/profilVolunteer.dart';

class Signin extends StatelessWidget {
  @override
  
  Widget build(BuildContext context)
   {
    return
    Stack(
      children:[
  
      Scaffold(
          backgroundColor: Colors.white, // <-- SCAFFOLD WITH TRANSPARENT BG
          body: Center(child:  Container(
                       alignment: Alignment.center,

          child:Center(child:  Container(
                       alignment: Alignment.center,

          child:Center(child:Column(

mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[      
  

                              Form(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                                MyStatefulWidget(),

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
                                        
                    TextFormField(
                      obscureText: true,
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
                    //#64C4B9
                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: MaterialButton(
                                        onPressed: (){
                            Navigator.push( context,   MaterialPageRoute(builder: (context) => Profil()),
            );
                                        },//since this is only a UI app
                                        child: Text('SIGN IN',
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
                            Navigator.push( context,   MaterialPageRoute(builder: (context) => Chose()),
            );
                                        },//since this is only a UI app
                                        child: Text('CREATE ACCOUNT',
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
                              ,         //            Image(image: AssetImage('assets/logo.jpg'),height: 70,width: 70,),

                                            //    MyStatefulWidget(),
],
                              ))
                           ,
                              ]
                              )))))
      )),
                                    ],
                                    )
                                  ;
                                }
                    
            
}


class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Image(image: AssetImage('assets/groupe.jpg'),height: 229) ,
      ),
    );
  }
}
