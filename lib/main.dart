import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/core/theme_app.dart';
import 'package:quran/logic/app_provider.dart';
import 'package:quran/routes/app_page.dart';
import 'package:quran/view/screen/splashscreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (c) => App_Provider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        routes: routes,
        home: const SplashScreen());
  }
}
