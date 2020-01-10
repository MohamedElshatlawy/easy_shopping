import 'package:easy_shopping/Model/advModel.dart';
import 'package:easy_shopping/appScreens/adsDetails.dart';

import 'package:easy_shopping/appScreens/searchfilter.dart';
import 'package:easy_shopping/backend/categories.dart';
import 'package:flutter/material.dart';


class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  List<String> countries = ['مصر', 'الاردن', 'البحرين', 'الكويت'];
  String dropdownValue = 'مصر';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
              'اعلانات عقارات الايجار',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_forward_ios,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Table(
              border: TableBorder.all(color: Colors.grey),
              children: [
                TableRow(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchFIlter()));
                    },
                    child: Container(
                      height: 60,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/filter.png',
                            scale: 4,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('خيارات البحث')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/sort.png',
                          scale: 4,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('رتب')
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/save_search.png',
                          scale: 4,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('احفظ البحث')
                      ],
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('اعلانات مميزة',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text('الكل',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  child: FutureBuilder<List<AdvModel>>(
                future: CategoryProvider().getDetailedCategory(20),
                initialData: [],
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Text('Press button to start.');
                    case ConnectionState.active:
                    case ConnectionState.waiting:
                      return Center(child: Text('جاري التحميل...'));
                    case ConnectionState.done:
                      if (snapshot.hasError)
                        return Center(
                            child: Text('${snapshot.error.toString()}'));

                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              print('$index');
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AdsDetals(
                                    snapshot.data[index]
                                  )));
                            },
                            child: Card(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                              child: Container(
                                  width: double.infinity,
                                  height: 170,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 3,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8)),
                                                child: Image.network(
                                                  snapshot
                                                      .data[index].gallery[0],
                                                  fit: BoxFit.cover,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height,
                                                ),
                                              )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(top: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      snapshot.data[index].price,
                                                      /*formatPrice(snapshot
                                                          .data[index].price),*/
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        snapshot
                                                            .data[index].title,
                                                        style: TextStyle(
                                                            height: 1.4),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Icon(Icons.location_on),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                            'nextPoint compound')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Icon(Icons.access_time),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          'اكتوبر 18',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(right: 8, top: 8),
                                          child: CircleAvatar(
                                            backgroundColor: Color.fromRGBO(
                                                128, 128, 128, .6),
                                            child: Image.asset(
                                              'assets/favorite.png',
                                              scale: 3,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 8, top: 8),
                                          padding:
                                              EdgeInsets.fromLTRB(16, 3, 16, 3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.red[800]),
                                          child: Text('مميز',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          );
                        },
                      );
                  }
                  return null;
                },
              )),
            )
          ],
        ),
      ),
    );
  }

 /* String formatPrice(String price) {
    return FlutterMoneyFormatter(amount: double.parse(price))
        .output
        .withoutFractionDigits;
  }*/
}
