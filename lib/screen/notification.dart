import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'DetailsShop.dart';

class notifiction extends StatefulWidget {
  //final int user_id;
    //const notifiction({Key? key, required this.user_id}) : super(key: key);

  @override
  _notifictionState createState() => _notifictionState();
}

class _notifictionState extends State<notifiction> {/*
     List<notific> list1 = [];

    List<notific> list2 = [];

    List<notific> fromDB(String strJson) {
      final data = jsonDecode(strJson);
      return List<notific>.from(data.map((e) => Myprod.fromMap(e)));
               }*/

              /* Future<List<notific>> getData() async {
                 List<notific> list=[];
                 final response = await http.post(Uri.http('mall-app.com', "jtto/Allnotification.php"),
                     body: {"action": "getAllnoti",
                     "user_id" :widget.user_id });
                 if (response.statusCode == 200) {
                   list = fromDB(response.body).cast<notific>();
                 }
                 return list;
               }*/

      /*         @override
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
                  /*  CircleAvatar(
                      backgroundImage: NetworkImage(
                              //+list2[index].icon!,
                      ),
                      radius: 30.0,
                    ),*/
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      //  Text(list2[index].mall_name!),
                        SizedBox(
                          height: 5.0,
                        ),
                       // Text(list2[index].text!),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
            );
          },
          itemCount: 52,
        ),
      ),
    );
  }
}
  /*   class notific {
      @required String ?mall_name;
      @required String ?text;
      @required String ?icon;

        notific({
          required this.mall_name,
         required this.text,
          required this.icon
        });
        factory notific.fromMap(Map<String,dynamic> e) {
    return notific(mall_name:e["mall_name"],text:e["text"],icon:e["icon"]);
  }
}*/
