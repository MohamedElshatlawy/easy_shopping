import 'package:easy_shopping/appScreens/home.dart';
import 'package:flutter/material.dart';

class EmailUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(child:Text('تعديل الايميل', 
          
          style: TextStyle(color: Colors.white,fontSize: 20))),
          SizedBox(width: 10,),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
                      child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
     body: Container(
       padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
       child: Directionality(
         textDirection: TextDirection.rtl,
                child: Column(
           children: <Widget>[
             TextField(
               decoration: InputDecoration(
                 hintText: 'كلمة السر '
               ),
               
             ),

              SizedBox(height: 15,),
             TextField(
               decoration: InputDecoration(
                 hintText: 'ايميل جديد '
               )),
             

               SizedBox(height: 30,),

               Container(
                 height: 40,
                 margin: EdgeInsets.only(left: 25,right: 25),
                 width: double.infinity,
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(40)
                   ),
                   child: Text('حفظ'),
                   onPressed: (){
                  
                   },
                   color: Colors.red[800],
                   textColor: Colors.white,
                 ),
               )
           ],
         ),
       ),
     ),
    );
 
 
  }
}