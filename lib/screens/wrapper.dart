import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/signIn.dart';
import 'package:diablo_music_app/models/user.dart';

import 'pages/home.dart';

////////////////////// Listen for Auth Changes
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserObj?>(context);

    //pageRoute after decision
    if (user == null)
      return Authentication();
    else
      return Home();
  }
}
