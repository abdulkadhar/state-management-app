import 'package:flutter/cupertino.dart';

class MyModel with ChangeNotifier {
  String value = "Hi";

  void changeInitialValue() {
    value = "Good bye state ful widget";
    print("value changed");
    notifyListeners();
  }
}
