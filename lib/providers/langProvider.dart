import 'package:flutter/foundation.dart';

class LocalProvider extends ChangeNotifier {
  String langCode = "ar";

  void updateLangCode(String code) {
    langCode = code;
    notifyListeners();
  }
}
