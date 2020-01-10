import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          backgroundColor: Colors.red[800],
          actions: <Widget>[
            Center(child: Text('حول التطبيق',style: TextStyle(fontSize: 16),),),

            SizedBox(width: 10,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_forward_ios,))
           , SizedBox(width: 10,)
          ],
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 10,right: 5,left: 5),

                child: Text('يقر مستخدم التطبيق بالتعليمات وسياسة الخصوصية,يحتفظ تطبيق اسهل تسوق بالحق في اجراء بعض الاحصاءات وتجربة المستخدمين عليه بشكل عام',
                style: TextStyle(fontSize: 20,
                height: 1.5
                ),
                textAlign: TextAlign.center,
                

                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 30)
                ,child: Text('v 0.0.1',style: TextStyle(fontSize: 16),)),
            )
          ],
        ),
    );
  }
}