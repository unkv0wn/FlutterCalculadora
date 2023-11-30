import 'package:calculadora_web/src/widgets/button.dart';
import 'package:flutter/widgets.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = '';

  void onButtonClick(ButtonClick click) {
    if (click is CommonButtonClick) {
      display += click.value;
      notifyListeners();
    } else if (click is ClearButtonClick) {
      display = '';
    } else if (click is ClearEntryButtonClick) {
      display = '';
    } else if (click is EqualsButtonClick) {
      final v = display.interpret();
      display = '$v';
    }

    notifyListeners();
  }
}
