import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/LoginAndResetAndSignUp/Login/login.dart';


import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;

import 'componenet/shoponerForm.dart';



class ShopOwner extends StatefulWidget {
  @override
  _ShopOwnerState createState() => _ShopOwnerState();
}

class _ShopOwnerState extends State<ShopOwner> {

  bool _isloading = false;
  String msg = "";
  String error = "";
  var user_id;

  void _submitAuthForm(String shopname,String email,
      //String Cardtypr,
      String numberDays,String password
      //File image
      /*bool islogin*/,String shopeCenterName, BuildContext ctx) async {



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ShopOwnerform(_submitAuthForm,_isloading),
    );
  }
}
