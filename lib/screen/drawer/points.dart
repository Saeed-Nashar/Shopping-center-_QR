import 'package:flutter/material.dart';
class Points extends StatelessWidget {
  final String pointNumber;

  const Points( this.pointNumber) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Points"),
      ),
      body: Center(
        child: Container(
          child:Text("My points:{$pointNumber}",style: Theme.of(context).textTheme.headline6,)
        ),
      ),
    );
  }
}
