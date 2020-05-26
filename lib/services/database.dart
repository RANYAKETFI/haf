import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:haf/models/Experience.dart';
import 'package:haf/models/volunteer.dart';
class DataBaseService
{
  //final String uid;
  final CollectionReference experiencesCollection = Firestore.instance.collection('experiences');


//DataBaseService( {this.uid });

Future updateExperience(String photo_url,String statut,String uid) async{
await experiencesCollection.document(uid).setData({
 'photoURL':photo_url,
 'statut':statut,
 'uid':uid,
});

}
//Future updateUsers(String )
// get stream
Stream<List<Experience>> get experiences
 {
return (experiencesCollection.snapshots().map(_experiencelist));
}
//experience lis
List<Experience> _experiencelist(QuerySnapshot snapshot)
{
  return snapshot.documents.map((doc){
return Experience(
photoURL: doc.data['photoURL'],
statut: doc.data['statut'],
uid:doc.data['uid'],

);

  }).toList();
}
 /* Stream<DocumentSnapshot> get userData{
    return experiencesCollection.document(uid).snapshots();
  }*/
  //userdata from snapshor/*
  /*UserData _userDatafromSnapshot(DocumentSnapshot snapshot){
return UserData(uid: );
  }//
*/
}
class DatabaseServiceUser{
final String uid;
 final CollectionReference userCollection =Firestore.instance.collection('users');

  DatabaseServiceUser({this.uid});
 

Future updateuser(String uid,String username,String email,String passwor,String phone)
 async{
await userCollection.document(uid).setData({

});

}

}