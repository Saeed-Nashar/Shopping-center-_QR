
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../notification.dart';

import '../profile/profile.dart';
import 'points.dart';
import 'whowe are.dart';



class MainDrawer extends StatefulWidget {
  
 //final int user_id;

 // const MainDrawer({Key? key, required this.user_id}) : super(key: key);
  @override
  __MainDrawerScreenState createState() => __MainDrawerScreenState();
}

class __MainDrawerScreenState extends State<MainDrawer> {

/* List<myfile> list1 = [];
 List<myfile> list2 = [];

  static var index;

  
   List<myfile> fromDB(String strJson) {
     final data = jsonDecode(strJson);
     return List<myfile>.from(data.map((e) => myfile.fromMap(e)));
        }
      
        Future<List<myfile>> getData() async {
          List<myfile> list=[];
          final response = await http.post(Uri.http('mall-app.com', "jtto/selectUser.php"),
              body: { "user_id" :widget.user_id });
          if (response.statusCode == 200) {
            list = fromDB(response.body).cast<myfile>();
          }
          return list;
        }
      
        @override
        void initState() {
          // TODO: implement initState
          getData().then((value) {
            setState(() {
              list1 = value;
              list2 = list1;
            });
          });
      
          super.initState();
        }*/
  Widget buildListTile(String title, IconData icon,VoidCallback tapHandler ) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: Colors.teal,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap:  tapHandler,
      ),
    );
  }
  String ?pointnumber="20";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.teal,
              width: double.infinity,
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.centerLeft,
              // color: Theme.of(context).accentColor,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "سعيد نشار",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
               "2122@hhh.kkk"
                   ,
                  //   list2[index].email,
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.teal,
                      size: 35,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile('النقاط', Icons.control_point, () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Points( pointnumber!)));

            }),
            buildListTile('الإعلانات', Icons.post_add, () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (BuildContext context) => notifiction()));
            }),
            buildListTile("من نحن", Icons.group, (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => WhoWeAre()));
            }),
          ],
        ),
      ),
    );
  }
}
