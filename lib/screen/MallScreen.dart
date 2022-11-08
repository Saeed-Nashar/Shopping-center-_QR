import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'DetailsShop.dart';


class MollScreen extends StatefulWidget {
/*  final int mall_id;
  final String mall_name;
  const MollScreen({Key? key, required this.mall_id, required this.mall_name}) : super(key: key);*/
  @override
  __MollScreenState createState() => __MollScreenState();
}

class __MollScreenState extends State<MollScreen> {


  
 /*  List<Myshop> fromDB(String strJson) {
     final data = jsonDecode(strJson);
     return List<Myshop>.from(data.map((e) => Myshop.fromMap(e)));
        }*/
      
    /*    Future<List<Myshop>> getData() async {
          List<Myshop> list=[];
          final response = await http.post(Uri.http('mall-app.com',"jtto/allshop.php"),
              body: {"mall_id" :widget.mall_id });
          if (response.statusCode == 200) {
            list = fromDB(response.body).cast<Myshop>();
          }
          return list;
        }*/

      /* Future<List<Myshop>> getData() async {
         List<Myshop> list=[];
         final response = await http.post(Uri.http('mall-app.com', "jtto/allshop.php"),
             body: {"mall_id" :widget.mall_id.toString()});
         if (response.statusCode == 200) {
           list = fromDB(response.body).cast<Myshop>();
         }
         return list;
       }*/
      /*
        @override
        void initState() {
          // TODO: implement initState
          getData().then((value) {
            setState(() {
              lists = value;
              lists2 = lists;
            });
          });
      
          super.initState();
        }*/
      
      
        @override
        Widget build(BuildContext context) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: Text(""),
              ),
              body: Column(
                children: [
                  Text('رابط تطبيق المول'),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(25),
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (builder) => DetailsShop()));
                          },
                          borderRadius: BorderRadius.circular(15),
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
                                      " عبد الله صورة هووووووون"),
                                         ),
                                ),
                                 Positioned(
                                   bottom: 20,
                                   right: 10,
                                   child: Container(
                                     width: 300,
                                     color: Colors.black54,
                                     padding: EdgeInsets.symmetric(
                                       vertical: 5,
                                       horizontal: 20,
                                     ),
                                     child: Text(
                                       "الاسم",
                                       style: TextStyle(
                                         fontSize: 26,
                                         color: Colors.white,
                                       ),
                                       softWrap: true,
                                       overflow: TextOverflow.fade,
                                     ),
                                   ),
                                 )
                             ],),
                           ], ),
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }

