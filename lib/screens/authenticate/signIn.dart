import 'package:diablo_music_app/assets/icons/social_icons.dart';
import 'package:diablo_music_app/screens/authenticate/signUp.dart';
import 'package:diablo_music_app/screens/pages/player.dart';
import 'package:diablo_music_app/services/auth.dart';
import 'package:diablo_music_app/shared/uiComponents.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diablo Music',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Diablo Music Sign In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  final AuthService _auth = AuthService();

  TextEditingController _email = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  // ignore: avoid_init_to_null
  dynamic user = null;

  // Methods   /////////////////////////////////////////////////////////////////////////////////////

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _launchURLg() async {
    const url =
        'https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLt() async {
    const url = 'https://twitter.com/login/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLl() async {
    const url =
        'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  /////////////////////////////////////////////////////////////////////////////////////// Methods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/alienware.jpg"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.all(40.0),

            child: ListView(
              children: <Widget>[
                Br(),
                Br(),
                FormInputBox(control: _email, hint: 'Enter your Email here...', label: 'Email', obscure: false),
                Br(),
                FormInputBox(control: _pass, hint: 'Enter your password here...', label: 'Password', obscure: true),
                Br(),
                TextButton(
                    onPressed: _toggle,
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        onPrimary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                        textStyle: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.bold
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(_obscureText ? "Show" : "Hide"),
                          Icon(_obscureText
                              ? Icons.lock_open
                              : Icons.lock_outline),
                        ])),

                Br(),
                Br(),
                Br(),

                Row(
                  children: <Widget>[],
                ),

                Br(),
                Br(),
                Br(),
                Br(),
                Br(),

                ElevatedButton(
                    onPressed: () async {
                      user = await _auth.signInEmailPass(_email.text, _pass.text);
                      if (user != null) {
                        // signed in
                        Future.delayed(Duration(seconds: 2), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                        toast("Welcome Back !");
                        });
                      } else {
                        toast("User not valid !");
                      }
                    },
                    child: Text('Submit'),
                    style: elevatedButtonStyle(),
                    ),

                Br(),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    style: elevatedButtonStyle(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Sign Up'),
                          Icon(Icons.face),
                        ])),

                Br(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: _launchURLg,
                      tooltip: 'Login using Google Account',
                      child: Icon(Social.google),
                    ),
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: _launchURLt,
                      tooltip: 'Login using Twitter Account',
                      child: Icon(Social.twitter),
                    ),
                    FloatingActionButton(
                      heroTag: "btn3",
                      onPressed: _launchURLl,
                      tooltip: 'Login using LinkedIn Account',
                      child: Icon(Social.linkedin),
                    ),
                    FloatingActionButton(
                      heroTag: "btn4",
                      onPressed: () async {
                        dynamic result = await _auth.signInGuest();
                        if (result == null) {
                          print("Error Signing In");
                        } else {
                          print("Signed In");
                          print(result);
                        }
                      },
                      tooltip: 'Skip/Continue as Guest',
                      child: Icon(Icons.library_music),
                    ),
                  ],
                ),
              ],
            ),

            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
