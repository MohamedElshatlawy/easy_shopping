

import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(child:Text('تغيير كلمة السر', 
          
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
                 hintText: 'كلمة السر الحالية'
               ),
               
               
             ),
             SizedBox(height: 15,),
             TextField(
               decoration: InputDecoration(
                 hintText: 'كلمة السر '
               )),
             SizedBox(height: 15,),
               TextField(
               decoration: InputDecoration(
                 hintText: ' اعادة كلمة السر'
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