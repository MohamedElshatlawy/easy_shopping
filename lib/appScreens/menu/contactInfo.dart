
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  String cityDropDOwn;
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
             'تعديل معلومات التواصل',
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
          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: <Widget>[
                     TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'اسم المعلن'),
                        ),
                        DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('مكان الاعلان'),
                          ),
                          isExpanded: true,
                          value: cityDropDOwn,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'c_font'
                          ),
                          underline: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              cityDropDOwn = newValue;
                            });
                          },
                          items: <String>['مصر', 'الاردن', 'البحرين', 'الكويت']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
                                child:  Row(
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    Text(value)
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                       TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'رقم الموبايل'),
                        ),

                          SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.only(left: 30,right: 30),
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        onPressed: (){},
                        color: Colors.red[800],
                        textColor: Colors.white,
                        child: Text('حفظ'),
                      ),
                    )
              ],
            ),
          ),
        ),
    );
  }
}