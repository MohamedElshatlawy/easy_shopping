import 'package:easy_shopping/UserAuth/chooseCountry.dart';
import 'package:easy_shopping/UserAuth/chooseLanguage.dart';
import 'package:easy_shopping/appScreens/ads.dart';
import 'package:easy_shopping/appScreens/menu/contactUs.dart';
import 'package:easy_shopping/appScreens/menu/favourite_ads.dart';
import 'package:easy_shopping/appScreens/menu/settings.dart';
import 'package:flutter/material.dart';

import 'aboutApp.dart';

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListTile(
        
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ads()));
            },
            leading: Image.asset(
              'assets/search_menu.png',
              scale: 2.8,
            ),
            title: Text('تصفح الاعلانات'),
          ),
          Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
          
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoutiteAds()));
            },
            leading: Image.asset(
              'assets/favorite_menu.png',
              scale: 2.8,
            ),
            title: Text('الاعلانات المفضلة'),
          ),
            Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
         
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            leading: Image.asset(
              'assets/settings_menu.png',
              scale: 2.8,
            ),
            title: Text('الاعدادات'),
          ),
            Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
           
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseCountry()));
            },
            leading: Image.asset(
              'assets/mapmarker_menu.png',
              scale: 2.8,
            ),
            title: Text('اختر البلد'),
          ),
            Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
          
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseLanguage()));
            },
            leading: Image.asset(
              'assets/language_menu.png',
              scale: 2.8,
            ),
            title: Text('اختر اللغة'),
          ),
            Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
           
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
            leading: Image.asset(
              'assets/contact_menu.png',
              scale: 2.8,
            ),
            title: Text('تواصل معنا'),
          ),
            Divider(height: 1,endIndent: 20,indent: 20,),
          ListTile(
           
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            leading: Image.asset(
              'assets/about_menu.png',
              scale: 2.8,
            ),
            title: Text('عن التطبيق'),
          ),
        ],
      ),
    );
  }
}
