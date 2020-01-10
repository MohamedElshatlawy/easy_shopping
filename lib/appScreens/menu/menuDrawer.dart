import 'package:easy_shopping/UserAuth/chooseCountry.dart';
import 'package:easy_shopping/UserAuth/chooseLanguage.dart';
import 'package:easy_shopping/appScreens/ads.dart';
import 'package:easy_shopping/appScreens/menu/aboutApp.dart';
import 'package:easy_shopping/appScreens/menu/addAds.dart';
import 'package:easy_shopping/appScreens/menu/chat.dart';
import 'package:easy_shopping/appScreens/menu/contactUs.dart';
import 'package:easy_shopping/appScreens/menu/favourite_ads.dart';
import 'package:easy_shopping/appScreens/menu/myAds.dart';
import 'package:easy_shopping/appScreens/menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/services.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 45, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo.png',
                      scale: 4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      color: Colors.red[800],
                      textColor: Colors.white,
                      child: Text('الدخول او مستخدم جديد'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('تم تسجيل الدخول باسم 01093138717')
                  ],
                ),
              ),
              Divider(),
              Expanded(
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset(
                            'assets/home.png',
                            scale: 2.8,
                          ),
                          title: Text('الرئيسية',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            prefix0.Navigator.pop(context);
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>Ads()
                            ));
                          },
                          leading: Image.asset(
                            'assets/search_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('تصفح الاعلانات'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>MyAds()
                            ));
                          },
                          leading: Image.asset(
                            'assets/ads.png',
                            scale: 2.8,
                          ),
                          title: Text('اعلاناتي'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Chat()
                            ));
                          },
                          leading: Image.asset(
                            'assets/chat.png',
                            scale: 2.8,
                          ),
                          title: Text('الدردشة'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>FavoutiteAds()
                            ));
                          },
                          leading: Image.asset(
                            'assets/favorite_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('الاعلانات المفضلة'),
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>AddAds()
                            ));
                          },
                          leading: Image.asset(
                            'assets/plus_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('أضف اعلان'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Settings()
                            ));
                          },
                          leading: Image.asset(
                            'assets/settings_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('الاعدادات'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>ChooseCountry()
                            ));
                          },
                          leading: Image.asset(
                            'assets/mapmarker_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('اختر البلد'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>ChooseLanguage()
                            ));
                          },
                          leading: Image.asset(
                            'assets/language_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('اختر اللغة'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>ContactUs()
                            ));
                          },
                          leading: Image.asset(
                            'assets/contact_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('تواصل معنا'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>AboutUs()
                            ));
                          },
                          leading: Image.asset(
                            'assets/about_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('عن التطبيق'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        ListTile(onTap: (){
                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                        },
                          leading: Image.asset(
                            'assets/logout_menu.png',
                            scale: 2.8,
                          ),
                          title: Text('خروج'),
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],
                    ),
                 
                 
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
