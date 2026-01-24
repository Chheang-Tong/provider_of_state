import 'package:flutter/widgets.dart';

extension LocaleString on Locale {
  String getLanguageName() {
    switch (toLanguageTag()) {
      case "en-US":
        return "English";
      case "km-KH":
        return "Khmer";
    }

    return "";
  }
}
