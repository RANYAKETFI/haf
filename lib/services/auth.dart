import 'package:firebase_auth/firebase_auth.dart';
import 'package:haf/models/volunteer.dart';
import 'package:haf/screens/home/authenticate/sign_in.dart';
class AuthService
{
  final FirebaseAuth _auth=FirebaseAuth.instance;
// creta user object based on firebase objects
Volunteer _volunteerFromFirebase(FirebaseUser user){
if(user!=null)
{
  return(Volunteer(uid:user.uid));

}
else {
  return null;
}


}
Stream <Volunteer> get user{

  return _auth.onAuthStateChanged
 // .map((FirebaseUser user) => _volunteerFromFirebase(user))
 .map( _volunteerFromFirebase)
 ;
}

//anonyme
/*
Future signInAnon() async{

  try {
   AuthResult result=  await _auth.signInAnonymously();
   FirebaseUser user=result.user;
   return _volunteerFromFirebase(user);
  } catch (e) {
    print(e.toString());
    return null;
  }

}*/
//signout

Future signOut() async{

try {
  return(await _auth.signOut());
} catch (e) {
  print("lol");
  return(null);
}
}
 
//email and password



//register email and password
Future signIn(String email,String password) async
{
 try {
    AuthResult result= await _auth.signInWithEmailAndPassword(email: email, password: password) ;
FirebaseUser user=result.user;
  Volunteer v=_volunteerFromFirebase(user);
return v;
  } 
  catch (e) {
    print(e.toString());
    print('mamchatch');
return null;
  }
}
//registration
Future volunteerregister(String email,String password) async{
  try {
    AuthResult result= await _auth.createUserWithEmailAndPassword(email: email, password: password) ;
FirebaseUser user=result.user;
  Volunteer v=_volunteerFromFirebase(user);
return v;
  } 
  catch (e) {
    print(e.toString());
    print('mamchatch');
return null;
  }
}

}