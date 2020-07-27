import 'package:baby_flutter/utility/my_style.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            radius: 1.0,
            center: Alignment(0, -0.3),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().mySizedBox(),
                MyStyle().showTitle('Nueng Food'),
                MyStyle().mySizedBox(),
                userForm(),
                MyStyle().mySizedBox(),
                passwordForm(),
                MyStyle().mySizedBox(),
                loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      width: 250.0,
      child: RaisedButton(
        color: MyStyle().darkColor,
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'User :',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'Password :',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
}
