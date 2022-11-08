import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../LoginAndResetAndSignUp/registration/component/CameraUserPickImage.dart';
import 'component/build name.dart';

class profile extends  StatefulWidget {


// final int user_id;

 // const profile({Key? key, required this.user_id}) : super(key: key);
  @override
  __profileScreenState createState() => __profileScreenState();
}

class __profileScreenState extends State<profile> {




  






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 25),
        //  CameraUserPickImage(imagepickFn: (File pickedImage) =>null, imagePath:'https://mall-app.com/jtto/img/'+list2[index].pic,),
          const SizedBox(height: 24),
          buildName("saed nashar" ,"", ""),
          const SizedBox(height: 24),

        ],
      ),
    );
  }
}

   /*  class myfile {
        @required int user_id;
        @required String name;
        @required String email;
        @required String pic;
        @required String number;
        @required String point;

   myfile({required this.user_id,required this.name,required this.email,required this.pic,required this.number,required this.point});

      factory myfile.fromMap(Map<String,dynamic> e) {
        return myfile(user_id:e["user_id"],name:e["name"],email:e["email"],pic:e["pic"],number:e["number"],point:e["point"]);
      }
}*/

