import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/login/login_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/theme.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/splash/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainThemingAndStateManagmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _borderLight = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: DeliveryColors.veryLightGrey,
            width: 2,
            style: BorderStyle.solid));

    final _borderDark = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: DeliveryColors.grey, width: 2, style: BorderStyle.solid));

    final lightTheme = ThemeData(
        appBarTheme: AppBarTheme(
            color: DeliveryColors.white,
            textTheme: GoogleFonts.poppinsTextTheme().copyWith(
                headline6: TextStyle(
                    fontSize: 20,
                    color: DeliveryColors.purple,
                    fontWeight: FontWeight.bold))),
        accentColor: DeliveryColors.purple,
        bottomAppBarColor: DeliveryColors.veryLightGrey,
        canvasColor: DeliveryColors.white,
        textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: DeliveryColors.purple,
            displayColor: DeliveryColors.purple),
        inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: DeliveryColors.purple),
            border: _borderLight,
            contentPadding: EdgeInsets.zero,
            enabledBorder: _borderLight,
            focusedBorder: _borderLight,
            hintStyle: GoogleFonts.poppins(
                color: DeliveryColors.lightGrey, fontSize: 10)),
        iconTheme: IconThemeData(color: DeliveryColors.purple));

    final darkTheme = ThemeData(
        appBarTheme: AppBarTheme(
            color: DeliveryColors.purple,
            textTheme: GoogleFonts.poppinsTextTheme().copyWith(
                headline6: TextStyle(
                    fontSize: 20,
                    color: DeliveryColors.white,
                    fontWeight: FontWeight.bold))),
        accentColor: DeliveryColors.white,
        bottomAppBarColor: Colors.transparent,
        canvasColor: DeliveryColors.grey,
        scaffoldBackgroundColor: DeliveryColors.dark,
        textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: DeliveryColors.green,
            displayColor: DeliveryColors.green),
        inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: DeliveryColors.white),
            fillColor: DeliveryColors.grey,
            filled: true,
            border: _borderDark,
            contentPadding: EdgeInsets.zero,
            enabledBorder: _borderDark,
            focusedBorder: _borderDark,
            hintStyle:
                GoogleFonts.poppins(color: DeliveryColors.white, fontSize: 10)),
        iconTheme: IconThemeData(color: DeliveryColors.white));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkTheme,
        home: SplashScreen());
  }
}
