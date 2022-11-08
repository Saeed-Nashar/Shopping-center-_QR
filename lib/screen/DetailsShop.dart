
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DetailsShop extends StatefulWidget {


  @override
  __DetailsShopState createState() => __DetailsShopState();
}

class __DetailsShopState extends State<DetailsShop> {

         @override
         Widget build(BuildContext context) {
           return Directionality(
             textDirection: TextDirection.rtl,
             child: Scaffold(
               appBar:AppBar(backgroundColor:Colors.teal,title: Text(''),) ,
               body: GridView.builder(
                 padding: const EdgeInsets.all(25),
                 itemCount: 50,
                 itemBuilder: (context, index) {
                   return  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap:(){
                          // Navigator.push(context,
                            // MaterialPageRoute(builder: (builder) => MollScreen()));
                           } ,
                         borderRadius: BorderRadius.circular(15),
                         child: Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15),
                           ),
                           elevation: 4,
                           margin: EdgeInsets.all(10),
                           child: Column(
                             children:[
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
                                    ""),
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
                            ],
                             ),
                             ],
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0,right: 8.0,bottom: 8.0),
                         child: Text('إسم المنتج:'
                         ),
                       ),Text('سعر المنتج:'),
                     ],
                   );
                 },
                 gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                   maxCrossAxisExtent: 400,
                   childAspectRatio: 1,
                   mainAxisSpacing: 20.0,
                 ),
               ),
             ),
           );
         }
       }
       

