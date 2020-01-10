import 'package:easy_shopping/UserAuth/chooseLanguage.dart';
import 'package:flutter/material.dart';

class CodeAuth extends StatefulWidget {
  @override
  _CodeAuthState createState() => _CodeAuthState();
}

class _CodeAuthState extends State<CodeAuth> {
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
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding: EdgeInsets.all(10),
                                hintText: '0',
                                fillColor: Colors.red[800],
                                hintStyle: TextStyle(
                                    fontSize: 25, color: Colors.white),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding: EdgeInsets.all(10),
                                hintText: '0',
                                fillColor: Colors.red[800],
                                hintStyle: TextStyle(
                                    fontSize: 25, color: Colors.white),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding: EdgeInsets.all(10),
                                hintText: '0',
                                fillColor: Colors.red[800],
                                hintStyle: TextStyle(
                                    fontSize: 25, color: Colors.white),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                contentPadding: EdgeInsets.all(10),
                                hintText: '0',
                                fillColor: Colors.red[800],
                                hintStyle: TextStyle(
                                    fontSize: 25, color: Colors.white),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'تم ارسال كود التفعيل الى رقم الموبايل ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    SizedBox(height: 8,),
                      Text('سيتم ارسال الرسالة خلال 30 ثانية',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
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
                        'كود التفعيل',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'لم يصلك الكود ؟',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.grey[100],
                            child: Text('اتصل بالهاتف',textAlign: TextAlign.right,),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(
                                  40,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.grey[100],
                            child: Text('ارسل مرة اخرى',textAlign: TextAlign.right),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => ChooseLanguage()));
                            },
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(
                                  40,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**
 * 
 *     
      
 * 
 */
