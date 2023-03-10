import 'dart:async';
import 'package:easy_go_wallet/screens/starter.dart';
import 'package:easy_go_wallet/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    Timer(const Duration(seconds : 4), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const StartPage()), (route) => false);
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child:Container(
          color: const Color(0xff58ab27),
          height: double.infinity,
          child: Hero (
            tag: "logo",
            child: Image.asset('assets/images/easygo3.png'),
          ),
        )
      )
    );
  }
}
