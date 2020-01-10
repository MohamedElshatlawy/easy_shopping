import 'package:flutter/material.dart';

class AdvertiserAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 8, top: 18),
            height: 90,
            color: Colors.red[800],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '23  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    Text('عدد الاعلانات',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Center(
                        child: Text(
                      'Quest properties',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Color.fromRGBO(128, 128, 129, .8),
                  child: Image.asset(
                    'assets/favorite.png',
                    scale: 3.5,
                  ),
                ),
                Image.asset(
                  'assets/quest.jpeg',
                  scale: 4,
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    
                    height: 300,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  'assets/t1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '3,000,000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'فيلا للبيع مساحة بتسهيلات في السداد تصل الى 10 سنوات',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text('اكتوبر 18'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.grey,
                                          textDirection: TextDirection.rtl,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('nextPoint compound'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
