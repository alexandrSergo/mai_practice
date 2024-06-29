import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mai_practice/components/constants.dart';
import 'package:mai_practice/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "MAI_PRACTICE",
      routerConfig: router,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kWhite,
          displayColor: kWhite
        ),
        cardTheme: const CardTheme(
          elevation: 0
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}