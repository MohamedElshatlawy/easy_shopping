import 'package:easy_shopping/Model/categoryModel.dart';
import 'package:easy_shopping/appScreens/ads.dart';
import 'package:easy_shopping/appScreens/category.dart';
import 'package:easy_shopping/appScreens/menu/addAds.dart';
import 'package:easy_shopping/appScreens/menu/chat.dart';
import 'package:easy_shopping/appScreens/menu/more.dart';
import 'package:easy_shopping/appScreens/menu/myAds.dart';
import 'package:easy_shopping/appScreens/menu/profile.dart';
import 'package:easy_shopping/appScreens/newHome.dart';
import 'package:easy_shopping/backend/categories.dart';

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:provider/provider.dart';

import 'menu/menuDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> countries = ['مصر', 'الاردن', 'البحرين', 'الكويت'];
  String dropdownValue = 'مصر';

  int homeIndex = 4;
  int allSelected = 0;

  var key = GlobalKey<ScaffoldState>();

  List<CategoryModel> myListCat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      key: key,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Icon(Icons.search), Icon(Icons.add_circle)],
        ),
        actions: <Widget>[
          Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.grey[400],
                ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  iconEnabledColor: Colors.white,
                  underline: Container(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items:
                      countries.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 28),
            child: FloatingActionButton(
              tooltip: 'اضافة اعلان',
              backgroundColor: Colors.red[800],
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => AddAds()));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: homeIndex,
        selectedItemColor: Colors.red[800],
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            homeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text(
                'المزيد',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('الدردشة',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/b1.png',
                scale: 9,
                color: (homeIndex == 2) ? Colors.red[800] : Colors.grey,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_drive_file),
              title: Text('اعلاناتي',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('الرئيسية',
                  style: TextStyle(fontWeight: FontWeight.bold)))
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            child: (homeIndex == 4)
                ? (allSelected == 0)
                    ? HomeWidget()
                    : (allSelected == 1) ? AllCats(myListCat) : Container()
                : (homeIndex == 3)
                    ? MyAds()
                    : (homeIndex == 1)
                        ? Chat()
                        : (homeIndex == 0) ? More() : Profile()),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController pageController = new PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            height: 70,
            color: Colors.red[800],
          ),
        ),
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.black,
                ),
                width: double.infinity,
                height: 150,
                child: PageIndicatorContainer(
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {},
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        child: Opacity(
                          opacity: .8,
                          child: Image.asset(
                            'assets/t1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        child: Opacity(
                          opacity: .8,
                          child: Image.asset(
                            'assets/t1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        child: Opacity(
                          opacity: .8,
                          child: Image.asset(
                            'assets/t1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  length: 3,
                  align: IndicatorAlign.bottom,
                  indicatorSelectorColor: Colors.red[800],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('تصفح',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Text('الكل',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.transparent,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          //prev Category
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Ads()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          width: 60,
                          height: 60,
                          child: Image.network(
                            categoryProvider.mainCats[index].imgURLIcon,
                            scale: 2.5,
                            color: Colors.red[800],
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: Text(
                          categoryProvider.mainCats[index].name,
                          style: TextStyle(height: 1.2),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
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
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: Container(
                        width: double.infinity,
                        height: 190,
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
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8)),
                                      child: Image.asset(
                                        'assets/t1.jpg',
                                        fit: BoxFit.cover,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                      ),
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '250,000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Flexible(
                                            child: Text(
                                              'شقة للبيع مساحة 125 م بتسهيلات في السداد تصل الى 10 سنوات',
                                              style: TextStyle(
                                                  height: 1.4, fontSize: 13),
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
                                              Text('nextPoint compound')
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
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                onPressed: () {},
                                                color: Colors.green,
                                                textColor: Colors.white,
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.edit),
                                                    Text('تعديل')
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                onPressed: () {},
                                                color: Colors.red[800],
                                                textColor: Colors.white,
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.delete),
                                                    Text('حذف')
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 8, top: 8),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(128, 128, 128, .6),
                                  child: Image.asset(
                                    'assets/favorite.png',
                                    scale: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
