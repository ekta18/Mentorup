import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/constants.dart';
import 'package:mentorup_app/splashscreen.dart';
import 'package:mentorup_app/Screens/Chat Page/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MentorUp',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
