import 'package:flutter/material.dart';
import 'package:flutter_toolkit/src/ui/views/home/home_view.dart';
import 'package:flutter_toolkit/src/ui/views/setting/setting_view.dart';
import 'package:flutter_toolkit/theme/component/constrained_view.dart';

abstract class RoutePath {
  static const String home = 'home';
  static const String setting = 'setting';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    switch (settings.name) {
      case RoutePath.home:
        page = const HomeView();
        break;
      case RoutePath.setting:
        page = const SettingView();
        break;
    }
    return MaterialPageRoute(
      builder: (context) => ConstrainedView(child: page),
    );
  }
}
