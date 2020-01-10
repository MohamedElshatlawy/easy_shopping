import 'package:easy_shopping/UserAuth/chooseCountry.dart';
import 'package:flutter/material.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String lang = "ar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(child:Text('اختر اللغة', 
          
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: <Widget>[
              RadioListTile(
                activeColor: Colors.red[800],
                groupValue: lang,
                value: "ar",
                title: Text('العربية'),
                onChanged: (v){
                  lang=v;
                  setState(() {
                    
                  });
                },
              ),
              Divider(
                endIndent: 15,
                indent: 15,
              ),
              RadioListTile(

                activeColor: Colors.red[800],
                groupValue: lang,
                value: "en",
                onChanged: (v){
                  lang=v;
                  setState(() {
                    
                  });
                },
                title: Text('الانجليزية'),
              ),

              SizedBox(height: 30,),
              RaisedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=>ChooseCountry()
                    )
                  );
                },
                color: Colors.red[800],
                textColor: Colors.white,
                child: Text('تم'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
