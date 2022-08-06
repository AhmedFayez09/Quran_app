import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/core/theme_app.dart';
import 'package:quran/logic/app_provider.dart';
import 'package:quran/routes/app_page.dart';
import 'package:quran/test2.dart';
import 'package:quran/view/screen/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        localizationsDelegates: [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("en"),
          Locale("ar"),
        ],
        locale: Locale("en"),
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        routes: routes,
        home:
       // test());
         const SplashScreen());
  }
}
