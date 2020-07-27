import 'package:baby_flutter/screens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

//Future<void> normalDialog(BuildContext context, String message) async {
//  showDialog(
//    context: context,
//    builder: (context) => SimpleDialog(
//      title: Text(message),
//      children: [
//        FlatButton(
//          onPressed: () => Navigator.pop(context),
//          child: Text('OK'),
//        )
//      ],
//    ),
//  );
//}

Future<void> normalDialog(BuildContext context, String message) async {
  AwesomeDialog(
    context: context,
    animType: AnimType.SCALE,
    dialogType: DialogType.INFO,
    body: Center(
      child: Text(
        message,
        style: TextStyle(fontStyle: FontStyle.normal),
      ),
    ),
    title: 'This is Ignored',
    desc: 'This is also Ignored',
    btnOkOnPress: () {},
  )..show();
}

Future<void> successDialog(BuildContext context, String message) async {
  AwesomeDialog(
    context: context,
    animType: AnimType.SCALE,
    dialogType: DialogType.SUCCES,
    body: Center(
      child: Text(
        message,
        style: TextStyle(fontStyle: FontStyle.normal),
      ),
    ),
    title: 'This is Ignored',
    desc: 'This is also Ignored',
    btnOkOnPress: () {
//      Navigator.pop(context);
      MaterialPageRoute route = MaterialPageRoute(builder: (value) => SignIn());
      Navigator.pushReplacement(context, route);
    },
  )..show();
}
