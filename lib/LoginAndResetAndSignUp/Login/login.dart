import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/screen/TabBar_Screen.dart';
import 'package:http/http.dart' as http;






import 'component/LoginForm.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isloading = true;
  /* var msg ;
  String error = "";
  var user_id ;
*/
  void _submitLogi(String email, String password /*, bool islogin,*/,
      BuildContext ctx) async {
    /*var response = await http.post(Uri.http('mall-app.com', 'jtto/login.php'),
        body: {'email': email, 'password': password});
    setState(() {
      msg = jsonDecode(response.body);
    });
    if (msg == "1") {
      setState(() {
        error = 'false';
      });
    } else if (msg =="2") {
      error = 'null';
    } else {
      user_id = msg;
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TabBar_Screen()));
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: LoginForm(_submitLogi, _isloading),
      ),
    );
  }
}
