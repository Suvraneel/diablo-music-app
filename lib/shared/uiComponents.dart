import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toast(String txt) {
  Fluttertoast.showToast(
    msg: txt,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

class formInputBox extends StatelessWidget {
  final String hint;
  final String label;
  final bool obscure;

  const formInputBox({
    Key? key,
    required TextEditingController control,
    required this.hint,
    required this.label,
    required this.obscure,
  }) : _email = control, super(key: key);

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Theme(
          data: ThemeData(hintColor: Colors.amber),
          child: TextField(
            controller: _email,
            style: TextStyle(color: Colors.white),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            maxLines: 1,
            obscureText: obscure,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black54,
                enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(4)),
                    borderSide:
                        BorderSide(width: 1, color: Colors.teal)),
                hintText: hint,
                labelText: label,
                hintStyle: TextStyle(
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                )),
          ),
        ));
  }
}
