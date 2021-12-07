import 'package:flutter/material.dart';
import "dart:math" show pi;
import 'dart:async';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _controller.forward();
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // duration: 1000,
      backgroundColor: Color(0xFF6F35A5),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller.view,
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * pi,
              child: child,
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/applogo3.png"),
                height: 110,
                width: 135,
              ),
              SizedBox(height: 8),
              Text(
                "MentorUp",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 35,
                    fontFamily: 'BungeeShade'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
