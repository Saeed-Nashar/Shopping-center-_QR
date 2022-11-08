import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int priceFull=100;
    String name="شركة روم التجارية المحدودة - فرع روم1";
    int taxNum=56465486465346;
    int tax=0;
    String date="2022/5/2";
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text('بيانات الفاتورة:'),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(Icons.analytics_outlined,color: Colors.teal,),
                  SizedBox(width: 6,),
                  Text("تفاصيل الفاتورة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ],
              ),
              Divider(color: Colors.grey,),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text('اسم البائع:   ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(width: 6,),
                  Text('$name',style: TextStyle(fontSize: 18,color: Colors.black),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(color: Colors.grey,),

              Row(
                children: [
                  Text('الرقم الضريبي:   ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(width: 6,),
                  Text('$taxNum',style: TextStyle(fontSize: 18.0,color: Colors.black),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(color: Colors.grey,),
              Row(
                children: [
                  Text('التاريخ:   ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(width: 6,),
                  Text('$date',style: TextStyle(fontSize: 18.0,color: Colors.black),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(color: Colors.grey,),
              Row(
                children: [
                  Text('مبلغ الفاتورة مع الضريبة:   ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(width: 6,),
                  Text('$priceFullريال ',style: TextStyle(fontSize: 18.0,color: Colors.black),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(color: Colors.grey,),
              Row(
                children: [
                  Text('الضريبة:   ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                  SizedBox(width: 6,),
                  Text('$tax ريال ',style: TextStyle(fontSize: 18.0,color: Colors.black),),
                ],
              ),
              SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
