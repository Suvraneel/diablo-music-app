// Import Dependencies
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:diablo_music_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'screens/wrapper.dart';

// Import Dart Pages

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

////////////////////////////////// Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserObj?>.value(
      value: AuthService().user,
      catchError: (_,__) => null,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
