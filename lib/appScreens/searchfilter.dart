import 'package:flutter/material.dart';

class SearchFIlter extends StatefulWidget {
  @override
  _SearchFIlterState createState() => _SearchFIlterState();
}

class _SearchFIlterState extends State<SearchFIlter> {
  String cityDropDOwn,
      businessDropDown = 'عقارات',
      adTypeDrobDown,
      genderDropDown,
      priceDropDown,
      luxuryDropDown,
      roomsDropDown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 20),
            height: 80,
            color: Colors.red[800],
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'اعادة ضبط',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'خيارات البحث',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/filter.png',
                        color: Colors.white,
                        scale: 3,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                                              child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'الاسم'),
                      ),
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('اختر المدينة'),
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
                              child: Row(
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
                              fontSize: 18, fontWeight: FontWeight.bold,
                              
                              ),
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
                        items: <String>['عقارات', 'سيارات', 'وظائف', 'الكترونيات']
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
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('نوع الاعلان'),
                        ),
                        isExpanded: true,
                        value: adTypeDrobDown,
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
                            adTypeDrobDown = newValue;
                          });
                        },
                        items: <String>['شهري', 'سنوي']
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
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('النوع'),
                        ),
                        isExpanded: true,
                        value: genderDropDown,
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
                            genderDropDown = newValue;
                          });
                        },
                        items: <String>['ذكر', 'انثى']
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
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('السعر'),
                        ),
                        isExpanded: true,
                        value: priceDropDown,
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
                            priceDropDown = newValue;
                          });
                        },
                        items: <String>['1500-3000', '3000-6000']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Text(value)
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('الكماليات'),
                        ),
                        isExpanded: true,
                        value: luxuryDropDown,
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
                            luxuryDropDown = newValue;
                          });
                        },
                        items: <String>['A', 'B']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                      ),
                      DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('غرف نوم'),
                        ),
                        isExpanded: true,
                        value: roomsDropDown,
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
                            roomsDropDown = newValue;
                          });
                        },
                        items: <String>['2', '3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
     
          ,Container(
            padding: EdgeInsets.only(top: 8,bottom: 3),
            color: Colors.red[800],
            width: double.infinity,
            child: FlatButton(
              color: Colors.red[800],

              textColor: Colors.white,
              onPressed: (){},
              child: Column(
                children: <Widget>[
                  Text('اظهر النتائج',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('عدد الاعلانات 23')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
