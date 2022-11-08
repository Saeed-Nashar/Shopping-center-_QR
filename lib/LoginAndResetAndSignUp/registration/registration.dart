
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/LoginAndResetAndSignUp/Login/login.dart';


import 'dart:io';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'component/registrationForm.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool _isloading = false;
  String msg = "";
 /* String error = "";
  var user_id ;*/

  void _submitAuthForm(String email, String password, String username,String number,
      File image , BuildContext ctx) async {
      /*      var response =
        await http.post(Uri.http('mall-app.com', 'jtto/sign_up.php'), body: {
      'email': email,
      'password': password,
      'username': username,
      'number': number,
      'image': image
    });
    setState(() {
      msg = jsonDecode(response.body);
    });
    switch (msg) {
      case 'INCERTED':
       // Toast.show(msg, duration: Toast.lengthLong);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) =>
            LoginScreen(),
        ));
        break;
      case 'EXISTS':
      // Toast.show(msg, duration: Toast.lengthLong);
        break;
      case 'not exsits':
        error = 'null';
        break;
    }*/
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: RegistrationForm(_submitAuthForm,_isloading),
      ),
    );
  }
}
