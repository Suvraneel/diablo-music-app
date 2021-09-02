import 'package:diablo_music_app/screens/pages/home.dart';
import 'package:diablo_music_app/screens/pages/player.dart';
import 'package:diablo_music_app/services/auth.dart';
import 'package:diablo_music_app/shared/uiComponents.dart';
import 'package:flutter/material.dart';
import 'signIn.dart';
// Import UI Components
// import 'package:diablo_music_app/shared/toast.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  TextEditingController _passc = new TextEditingController();

  // ignore: avoid_init_to_null
  dynamic user = null;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up for New Users'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/alienware.jpg"),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(40.0),
          child: ListView(
            children: <Widget>[
              Image.asset(
                'assets/images/skull.gif',
                height: 100.0,
                width: 50.0,
              ),
              Br(),
              FormInputBox(
                  control: _name,
                  hint: 'Enter your username here...',
                  label: 'Username',
                  obscure: true),
              Br(),
              FormInputBox(
                  control: _email,
                  hint: 'Enter your Email here...',
                  label: 'Email',
                  obscure: false),
              Br(),
              FormInputBox(
                  control: _pass,
                  hint: 'Enter your password here...',
                  label: 'Password',
                  obscure: true),
              Br(),
              FormInputBox(
                  control: _passc,
                  hint: 'Re-enter same password here...',
                  label: 'Confirm Password',
                  obscure: true),
              Br(),
              ElevatedButton(
                child: Text("SignUp"),
                onPressed: () async {
                  dynamic result;
                  if (_pass.text == _passc.text) {
                    result = await _auth.signUpEmailPass(
                        _name.text, _email.text, _pass.text);
                  } else {
                    toast("Passwords DON'T match... Try Again");
                  }

                  if (result != null) {
                    // signed in
                    toast("Registration successful !");
                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    });
                  } else {
                    toast("Registration not valid !");
                  }
                },
                style: elevatedButtonStyle(),
              ),
              FloatingActionButton(
                heroTag: "btn6",
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Authentication()),
                  );
                },
                tooltip: 'Back to Login',
                child: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
