import 'package:bam/modules/screens/Auth/loginscreen/login.dart';
import 'package:bam/modules/screens/Auth/registerscreen/Register.dart';
import 'package:bam/modules/splashscreens/initialsplash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white)),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const InitialSplash(
        child: MyLogin(),
      ),
      routes: {
        Register.RegisterRoute: (context) => const Register(),
        MyLogin.loginRoute: (context) => const MyLogin()
      },
    ));
  }
}
