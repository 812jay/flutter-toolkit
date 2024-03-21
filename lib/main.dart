import 'package:flutter/material.dart';
import 'package:flutter_toolkit/src/services/theme_service.dart';
import 'package:flutter_toolkit/util/route_path.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) => child!,
            ),
          ],
        );
      },
      theme: context.themeService.themeData,
      initialRoute: RoutePath.home,
      onGenerateRoute: RoutePath.onGenerateRoute,
    );
  }
}
