import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
              'تواصل معنا',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_forward_ios)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20), hintText: 'الاسم'),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20), hintText: 'الايميل'),
                ),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20), hintText: 'المشكلة'),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20), hintText: 'الموبايل'),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    color: Colors.red[800],
                    textColor: Colors.white,
                    child: Text('ارسال'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
