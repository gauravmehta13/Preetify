import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Constants.dart';
import 'HomePage.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preetify',
      theme: ThemeData(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.light),
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: primaryColor, // background
              onPrimary: Colors.white, // foreground
            ),
          ),
          fixTextFieldOutlineLabel: true,
          selectedRowColor: primaryColor,
          primaryColor: primaryColor,
          accentColor: primaryColor,
          backgroundColor: primaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: primaryColor, // background
              onPrimary: Colors.white, // foreground
            ),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
          )),
      home: HomePage(),
    );
  }
}
