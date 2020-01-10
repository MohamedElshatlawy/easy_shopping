import 'dart:async';

import 'package:easy_shopping/UserAuth/login.dart';
import 'package:easy_shopping/shoppingType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'backend/categories.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

   
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => ShoppingType()));
  }

  @override
  Widget build(BuildContext context) {
    // Provider.of<CategoryProvider>(context).getMainCategories();
    // TODO: implement build
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/splash.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.asset(
              'assets/logo.png',
              scale: 4,
            ),
          )
        ],
      ),
    ));
 
 
  }
}
