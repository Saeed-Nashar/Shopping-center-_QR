import 'package:flutter/material.dart';

import 'component/ChatModel.dart';
import 'component/customCard.dart';


class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List <chatModel> chats=[
    chatModel(
      name:"صحارى مول",
      icon:"person.svg",
      isGroup:false,
      time:"4:00",
      currentMessage:"hi", status: "",
    ),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder:(context,index)=>customCard(
            chatmodel:chats[index],
          ),
        ),
      ),
    );
  }
}
