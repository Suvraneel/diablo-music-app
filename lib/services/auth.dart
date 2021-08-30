import 'package:diablo_music_app/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user object based on Firebase pack: UserCredential
  UserObj? _userFromFirebaseUserCred(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? UserObj(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<UserObj?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUserCred(user!));
  }

  // sign in anonymous
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
    Future signInEmailPass( String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword( email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUserCred(user!);
    } on Exception catch (e) {
      print(e.toString());
      return null;
    }
  }

  // email & pass signup
  Future signUpEmailPass(String name, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword( email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUserCred(user!);
    } on Exception catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
