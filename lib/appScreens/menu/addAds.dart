import 'package:flutter/material.dart';

class AddAds extends StatefulWidget {
  @override
  _AddAdsState createState() => _AddAdsState();
}

class _AddAdsState extends State<AddAds> {
  String adPlace, businessDropDown = 'عقارات';
  String radio = "mob";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
              'اضف اعلان',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 4 + 80,
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 100,
                    height: 100,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)),
                            child: CircleAvatar(
                              radius: 40,
                              child: Image.asset(
                                'assets/camera.png',
                                scale: 4,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.red[800],
                            child: Image.asset(
                              'assets/plus_menu.png',
                              scale: 2.5,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text('اضف صورة'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('التقط صورة جديدة او اختر من مكتبة الصور'),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          width: 80,
                          color: Colors.white,
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(9),
                                  child: Image.asset(
                                    'assets/t1.jpg',
                                    fit: BoxFit.cover,
                                  )),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.red[800],
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Scrollbar(
                  
                                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'اسم الأعلان'),
                        ),
                        DropdownButton<String>(
                          hint: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('مكان الأعلان',style: TextStyle(fontFamily: 'c_font')),
                          ),
                          isExpanded: true,
                          value: adPlace,
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
                              adPlace = newValue;
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
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Text(
                            'فئة',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownButton<String>(
                          isExpanded: true,

                          value: businessDropDown,
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
                              businessDropDown = newValue;
                            });
                          },
                          items: <String>[
                            'عقارات',
                            'سيارات',
                            'وظائف',
                            'الكترونيات'
                          ].map<DropdownMenuItem<String>>((String value) {
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
                          maxLines: 2,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'الوصف'),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'اسم المعلن'),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'ايميل'),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: 'موبايل'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Text(
                            'تواصل عن طريق',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              groupValue: radio,
                              onChanged: (v) {},
                              value: 'mob',
                              activeColor: Colors.red[800],
                            ),
                            Text('موبايل'),
                            Radio(
                              groupValue: radio,
                              onChanged: (v) {},
                              value: 'msg',
                              activeColor: Colors.red[800],
                            ),
                            Text('رسائل'),
                            Radio(
                              groupValue: radio,
                              onChanged: (v) {},
                              value: 'them',
                              activeColor: Colors.red[800],
                            ),
                            Text('كلاهما')
                          ],
                        ),
                        Container(
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Checkbox(
                                onChanged: (v) {},
                                value: true,
                                activeColor: Colors.red[800],
                                checkColor: Colors.white,
                              ),
                              Flexible(
                                  child: Text(
                                      'استقبل الايميلات كل فترة بشكل منتظم')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.red[800],
              width: double.infinity,
              child: FlatButton(
                color: Colors.red[800],
                textColor: Colors.white,
                onPressed: () {},
                child: Text('اضف اعلان'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
