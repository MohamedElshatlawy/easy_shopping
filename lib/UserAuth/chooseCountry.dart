import 'package:easy_shopping/UserAuth/password.dart';
import 'package:flutter/material.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryeState createState() => _ChooseCountryeState();
}

class _ChooseCountryeState extends State<ChooseCountry> {
  int country = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
              child: Text('اختر البلد',
                  style: TextStyle(color: Colors.white, fontSize: 20))),
          SizedBox(
            width: 10,
          ),
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
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Container(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 1,
                  title: Text('مصر'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 2,
                  title: Text('البحرين'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 3,
                  title: Text('الاردن'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 4,
                  title: Text('الكويت'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 5,
                  title: Text('لبنان'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 6,
                  title: Text('سلطنة عمان'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 7,
                  title: Text('قطر'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                RadioListTile(
                  activeColor: Colors.red[800],
                  groupValue: country,
                  value: 8,
                  title: Text('المملكة العربية السعودية'),
                  onChanged: (v) {
                    country = v;
                    setState(() {});
                  },
                ),
                Divider(
                  endIndent: 15,
                  indent: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>Password()
                    ));
                  },
                  color: Colors.red[800],
                  textColor: Colors.white,
                  child: Text('تم'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
