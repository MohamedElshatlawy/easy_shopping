import 'package:easy_shopping/Model/categoryModel.dart';
import 'package:easy_shopping/backend/categories.dart';
import 'package:easy_shopping/providers/langProvider.dart';
import 'package:easy_shopping/splash.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Localization/applocal.dart';

main(List<String> args) {
  
  runApp(MaterialApp(
    home: Splash(),
    theme: ThemeData(fontFamily: 'c_font'),
  ));
}

/**
 * 
 *  runApp(
    ChangeNotifierProvider<LocalProvider>.value(
    value: LocalProvider(),
    child: RestartWidget(
      child: HomeMaterialAppWidget(),
    ),
  ));
 */
class RestartWidget extends StatefulWidget {
  final Widget child;

  RestartWidget({this.child});

  static restartApp(BuildContext context) {
    final _RestartWidgetState state =
        context.ancestorStateOfType(const TypeMatcher<_RestartWidgetState>());
    state.restartApp();
  }

  @override
  _RestartWidgetState createState() => new _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = new UniqueKey();

  void restartApp() {
    this.setState(() {
      key = new UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      key: key,
      child: widget.child,
    );
  }
}
/*
class HomeMaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocalProvider localProvider = Provider.of<LocalProvider>(context);

    return MaterialApp(
      home: Splash() //MyApp(localProvider),
      ,
      supportedLocales: [Locale(localProvider.langCode)],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, suppotedLocales) {
        for (var suppotedLocale in suppotedLocales) {
          if (suppotedLocale.languageCode == locale.languageCode) {
            return suppotedLocale;
          }
        }
        return suppotedLocales.first;
      },
    );
  }
}

class MyApp extends StatelessWidget {
  LocalProvider localProvider;

  MyApp(this.localProvider);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String v = localProvider.langCode;
    return Scaffold(
      body: Center(
          child: Row(
        children: <Widget>[
          Radio(
              groupValue: v,
              value: "ar",
              onChanged: (lan) {
                v = lan;
                print(v);
                localProvider.updateLangCode(v);
                RestartWidget.restartApp(context);
              }),
          Radio(
            groupValue: v,
            value: "en",
            onChanged: (lan) {
              v = lan;
              print(v);

              localProvider.updateLangCode(v);

              RestartWidget.restartApp(context);
            },
          ),
          RaisedButton(
            child: Text('go'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TestWid()));
            },
          )
        ],
      )),
    );
  }
}

class TestWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context).translate('msg')),
      ),
    );
  }
}
*/