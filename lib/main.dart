import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/constant/color_constant.dart';
import 'package:techblog/screens/prifle_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // farsi
      ],
      home: const ProfileScreen(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Vazir',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: SolidColors.posterTitle),
          titleMedium: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: SolidColors.posterSubTitle),
          bodyLarge: TextStyle(
              fontFamily: 'Vazir', fontSize: 13, fontWeight: FontWeight.w300),
          displayMedium: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w300),
          displaySmall: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 14,
              color: SolidColors.seeMore,
              fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 14,
              color: Color.fromARGB(255, 70, 70, 70),
              fontWeight: FontWeight.w700),
          headlineSmall: TextStyle(
              fontFamily: 'Vazir',
              fontSize: 14,
              color: SolidColors.hintText,
              fontWeight: FontWeight.w700),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
