import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MallScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  __HomeScreenState createState() => __HomeScreenState();
}

class __HomeScreenState extends State<HomeScreen> {



 /* Future<List<MyService>> getData() async {
    List<MyService> list=[];
    final response = await http.post(Uri.http('mall-app.com', "jtto/allmall.php"),
        body: {"action": "getAll"});
    if (response.statusCode == 200) {
      list = fromDB(response.body).cast<MyService>();
    }
    return list;
  }*/

/*  @override
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(25),
        itemCount:25,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => MollScreen(
                  )));
            },
         //   borderRadius: BorderRadius.circular(15),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                Stack(
                  children:[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image(
                        height: 80,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      image: NetworkImage(
                        "عبد الله حط صورة هون اوك "//  'https://mall-app.com/jtto/img/'+list2[index].icon,
                      ),
                  ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: Container(

                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 18,
                        ),
                        child: Text(
                          "الاسم",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                ],
                ),
              ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.7,
          crossAxisSpacing: 35,
          mainAxisSpacing: 35,
        ),
      ),
    );
  }
}

/*class MyService {
   @required int mall_id;
   @required String mall_name;
   @required String icon;

   MyService({required this.mall_id,required this.mall_name,required this.icon});

  factory MyService.fromMap(Map<String,dynamic> e) {
    return MyService(mall_id:e["mall_id"].hashCode,mall_name:e["name"],icon:e["icon"]);
  }
}*/
