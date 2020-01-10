import 'package:easy_shopping/UserAuth/login.dart';
import 'package:flutter/material.dart';

import 'backend/shopTypeApi.dart';

class ShoppingType extends StatefulWidget {
  @override
  _ShoppingTypeState createState() => _ShoppingTypeState();
}

class _ShoppingTypeState extends State<ShoppingType> {
  String dropDown = "Egypt";
  bool loadAPI=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/splash.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/logo.png',
                    scale: 4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 4),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'اختر نوع التسوق',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 4),
                    child: Row(
                      children: <Widget>[
                        DropdownButton(
                          value: dropDown,
                          items: [
                            DropdownMenuItem(
                              value: 'Egypt',
                              child: Text(
                                'مصر',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'SaudiArabia',
                              child: Text(
                                'السعودية',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'es-shopping',
                              child: Text(
                                'الكل',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                          onChanged: (String value) {
                            setState(() {
                              dropDown = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 48,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      onPressed: () {
                        setState(() {
                          loadAPI=true;
                        });
                        getShopTypeURL(dropDown).whenComplete((){
                          setState(() {
                            loadAPI=false;
                          });
                        }).then((v){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=>Login()
                          ));
                        }).catchError((e){
                          print(e);
                        });
                      },
                      color: Colors.red[800],
                      textColor: Colors.white,
                      child: Text('تاكيد',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
               (loadAPI)?   CircularProgressIndicator(
                   valueColor: new AlwaysStoppedAnimation<Color>(Colors.red[800]),
                  ):Container()
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
