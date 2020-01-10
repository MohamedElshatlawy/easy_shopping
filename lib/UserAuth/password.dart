
import 'package:easy_shopping/UserAuth/signup.dart';
import 'package:easy_shopping/appScreens/home.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              color: Colors.red[800],
            ),
            Container(
              margin: EdgeInsets.only(top: 45, right: 20),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                                              child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'كلمة السر',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.center,
              child: Directionality(
                textDirection: TextDirection.rtl,
                              child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      color: Colors.white,
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.only(top: 55, bottom: 55),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              padding: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blueGrey[50]),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Icon(
                                    Icons.lock_outline,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          hintText: 'كلمة المرور الجديد',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              padding: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blueGrey[50]),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Icon(
                                    Icons.lock_outline,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          hintText: ' اعادة كلمة المرور الجديدة',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 20, right: 40),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    Checkbox(
                                      onChanged: (v) {},
                                      value: true,
                                      activeColor: Colors.red[800],
                                      checkColor: Colors.white,
                                    ),
                                    Text(
                                      'موافق على',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('شروط الاستخدام',
                                        style: TextStyle(
                                            color: Colors.red[800], fontSize: 15))
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                color: Colors.red[800],
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Home()));
                                },
                                textColor: Colors.white,
                                child: Text('اضف كلمة السر'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
