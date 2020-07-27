import 'package:baby_flutter/utility/my_style.dart';
import 'package:baby_flutter/utility/normal_dialog.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String chooseType, name, user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            radius: 1.0,
            center: Alignment(0, -0.6),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: [
            myLogo(),
            MyStyle().mySizedBox(),
            showAppName(),
            MyStyle().mySizedBox(),
            nameForm(),
            MyStyle().mySizedBox(),
            userForm(),
            MyStyle().mySizedBox(),
            passwordForm(),
            MyStyle().mySizedBox(),
            userRadio(),
            shopRadio(),
            riderRadio(),
            registerButton(),
          ],
        ),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      width: 250.0,
      child: RaisedButton(
        color: MyStyle().darkColor,
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          if (name == null ||
              name.isEmpty ||
              user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normalDialog(context, "โปรดกรอกข้อมูลให้ครบ");
          } else if (chooseType == null) {
            normalDialog(context, "เลือกประเภทของคุณ");
          } else {
            successDialog(context, "เสร็จสิ้น");
          }
        },
      ),
    );
  }

  Row userRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio(
            value: 'User',
            groupValue: chooseType,
            onChanged: (value) {
              setState(() {
                chooseType = value;
              });
            },
          ),
          Text(
            'ผู้สั่งอาหาร',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );

  Row shopRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio(
            value: 'Shop',
            groupValue: chooseType,
            onChanged: (value) {
              setState(() {
                chooseType = value;
              });
            },
          ),
          Text(
            'เจ้าของร้านอาหาร',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );

  Row riderRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio(
            value: 'Rider',
            groupValue: chooseType,
            onChanged: (value) {
              setState(() {
                chooseType = value;
              });
            },
          ),
          Text(
            'ผู้ส่งอาหาร',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );

  Widget nameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 280.0,
            child: TextField(
              onChanged: (value) => name = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.face,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Name :',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget userForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 280.0,
            child: TextField(
              onChanged: (value) => user = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_box,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Username :',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 280.0,
            child: TextField(
              onChanged: (value) => password = value.trim(),
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
          ),
        ],
      );

  Row showAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showTitle('Nueng Food'),
      ],
    );
  }

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyStyle().showLogo(),
        ],
      );
}
