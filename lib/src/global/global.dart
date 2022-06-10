import 'package:easy_sidemenu/src/side_menu_display_mode.dart';
import 'package:easy_sidemenu/src/side_menu_style.dart';
import 'package:flutter/widgets.dart';

// renamed file
class Global {
  static late PageController controller;
  static late SideMenuStyle style;
  static DisplayModeNotifier displayModeState =
      DisplayModeNotifier(SideMenuDisplayMode.auto);
}

class DisplayModeNotifier extends ValueNotifier<SideMenuDisplayMode> {
  DisplayModeNotifier(SideMenuDisplayMode value) : super(value);

  void change(SideMenuDisplayMode mode) {
    value = mode;
    notifyListeners();
  }
}
