

import 'package:easy_shopping/appScreens/menu/contactInfo.dart';
import 'package:easy_shopping/appScreens/menu/updateEmail.dart';
import 'package:flutter/material.dart';

import 'changePassword.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
             'الاعدادات',
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_forward_ios))
        ],
      ),
    body: Directionality(
      textDirection: TextDirection.rtl,
          child: Column(
        children: <Widget>[
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context)=>ContactInfo()
              ));
            },
            title: Text('تعديل معلومات التواصل'),
          ),
          Divider(),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>ChangePassword()
              ));
            },
            title: Text('تغيير كلمة السر'),
          ),
          Divider(),
          ListTile(
            onTap: (){
                Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context)=>EmailUpdate()
                       )
                     );
            },
            title: Text('تعديل الايميل'),
          ),
          Divider(),
          ListTile(
            title: Text('الغاء الحساب'),
          ),
          
        ],
      ),
    ),
    );
  }
}