import 'package:easy_shopping/Model/advModel.dart';
import 'package:easy_shopping/appScreens/advertiserAds.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class AdsDetals extends StatelessWidget {
  AdvModel _advModel;

  AdsDetals(this._advModel);

  PageController pageController = new PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3 + 10,
              color: Colors.grey,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    child: PageIndicatorContainer(
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (index) {},
                        children: getPageViewList(),
                      ),
                      length: _advModel.gallery.length,
                      align: IndicatorAlign.bottom,
                      indicatorSelectorColor: Colors.red[800],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'تفاصيل الاعلان',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromRGBO(128, 128, 129, .8),
                            child: Image.asset(
                              'assets/favorite.png',
                              scale: 3.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    _advModel.price,
                    /*formatPrice(_advModel.price),*/
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Flexible(
                    child: Text(
                      _advModel.title,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                          'assets/views.png',
                          scale: 1.8,
                        ),
                        Text('1500')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                          'assets/time.png',
                          scale: 1.5,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text('اكتوبر 18')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.asset(
                          'assets/mapmarker_menu.png',
                          scale: 2,
                        ),
                        Text(
                          'nextpoint compound',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text('3'), Text('غرف نوم')],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text('3'), Text('الحمامات')],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[Text('م'), Text(' 125')],
                  ),
                  Text('المساحة')
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text('الأرضي'), Text('الطابق')],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Text(
                _advModel.description,
                textAlign: TextAlign.right,
                style: TextStyle(height: 1.3),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    color: Colors.red[800],
                    textColor: Colors.white,
                    child: Text('ابلغ عن اعلان'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdvertiserAds()));
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Quest properties'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'كل اعلانات المستخدم',
                              style: TextStyle(color: Colors.red[800]),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/quest.jpeg',
                          scale: 4,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Text(
                'اعلانات مماثلة',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 170,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: GridView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300],
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: GridTile(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/t1.jpg',
                                fit: BoxFit.cover,
                              )),
                          footer: Container(
                            padding: EdgeInsets.only(top: 5, right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  '3,000,000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'فيلا للبيع مساحة بتسهيلات في السداد تصل الى 10 سنوات',
                                  style: TextStyle(height: 1.2),
                                  textAlign: TextAlign.right,
                                )
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.red[800],
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      color: Colors.red[800],
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Image.asset(
                            'assets/chat.png',
                            scale: 2.5,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('ارسل رسالة', style: TextStyle(fontSize: 16))
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      color: Colors.red[800],
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Image.asset(
                            'assets/contact_menu.png',
                            color: Colors.white,
                            scale: 2.5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'اتصل بالبائع',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getPageViewList() {
    List<Widget> myList = [];

    for (int i = 0; i < _advModel.gallery.length; i++) {
      myList.add(Opacity(
        opacity: .7,
        child: Image.network(
          _advModel.gallery[i],
          fit: BoxFit.cover,
        ),
      ));
    }
    return myList;
  }

  /* String formatPrice(String price) {
    return FlutterMoneyFormatter(amount: double.parse(price))
        .output
        .withoutFractionDigits;
  }*/
}
