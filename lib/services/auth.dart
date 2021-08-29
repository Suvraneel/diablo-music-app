import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // anonymous
  Future signInGuest() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } on Exception catch (e) {
      print(e.toString());
      return null;
    }
  }

  // email & pass signin
  

  // email & pass signup

  // sign out
}
