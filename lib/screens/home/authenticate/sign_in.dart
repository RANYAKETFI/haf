import 'package:flutter/material.dart';
import 'package:haf/screens/home/authenticate/sign_up.dart';
import 'package:haf/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  final AuthService _auth=AuthService();
  // text state 
  String email="";
  String password="";
  String erreur="";
  final _formkey=GlobalKey<FormState>();

  Widget build(BuildContext context) {

    return Scaffold
    (
       backgroundColor: Colors.white, // <-- SCAFFOLD WITH TRANSPARENT BG
            body: Center(
                child: Container(
                    alignment: Alignment.center,
                    child: Center(
                        child: Container(
                            alignment: Alignment.center,
                            child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                  Form(
                                    key:_formkey,
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      MyStatefulWidget(),

                                      TextFormField(
                                        validator: (val)
                                        {
                                          if (val.isEmpty){
                                            return' please enter an email ';
                                          }
                                        },
                                      
                                        onChanged: (val){
setState(()=>email=val);
                                        },
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                        ),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff109094))),
                                            labelText: 'Email',
                                            prefixIcon: Icon(Icons.email),
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ),

                                      TextFormField(
 validator: (val)
                                        {
                                          if (val.isEmpty){
                                            return' please enter a password  ';
                                          }
                                        },
                                         onChanged: (val){
                                          setState(()=>password=val);

                                        },
                                        obscureText: true,
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                        ),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xff109094))),
                                            labelText: 'Password',
                                            prefixIcon: Icon(Icons.lock),
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ),
                                      //#64C4B9
                                      Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: MaterialButton(
                                            onPressed: () 
                                            
                                            async {
                                           
if(_formkey.currentState.validate())
{ 
dynamic result=await _auth.signIn(email.toString().trim(),password.toString().trim());
if(result==null)
{
  print("erreur ");
  setState(() { erreur="Wrong email or password";
  });
}
else {
}

}}, //since this is only a UI app
                                            child: Text(
                                              'SIGN IN',
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
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          )),

                                      Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChoseProfil()),
                                              );
                                            }, //since this is only a UI app
                                            child: Text(
                                              'CREATE ACCOUNT',
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
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          )), //            Image(image: AssetImage('assets/logo.jpg'),height: 70,width: 70,),

                                      //    MyStatefulWidget(),
                                                     SizedBox(height:30), Text(erreur,style: TextStyle(color:Colors.red),),
   ],
                                  )),
                                ])))))))
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
        child: Image(image: AssetImage('assets/groupe.jpg'), height: 229),
      ),
    );
  }
}
