import 'package:easy_shopping/backend/userAuth.dart';
import 'package:flutter/material.dart';

import 'codeAuth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var phoneController=TextEditingController();

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
                        onTap: () {
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
                        'مستخدم جديد',
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
                                    Icons.phone,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          hintText: 'رقم الموبايل',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 40),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Checkbox(
                                    onChanged: (v) {},
                                    value: true,
                                    activeColor: Colors.red[800],
                                    checkColor: Colors.white,
                                  ),
                                  Text('موافق على'),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'شروط الاستخدام',
                                    style: TextStyle(
                                        color: Colors.red[800], fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 40),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Checkbox(
                                    onChanged: (v) {},
                                    value: false,
                                    activeColor: Colors.red[800],
                                    checkColor: Colors.white,
                                  ),
                                  Flexible(
                                      child: Text(
                                          'استقبل الايميلات كل فترة بشكل منتظم')),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                color: Colors.red[800],
                                onPressed: () {

                              /*    registerUser(phoneController.text).then((v){})
                                  .catchError((e){
                                    print('ErroReg:$e');
                                  });*/
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CodeAuth()));
                                },
                                textColor: Colors.white,
                                child: Text('مستخدم جديد'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
