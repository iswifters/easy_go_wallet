import 'package:easy_go_wallet/screens/splash_screen.dart';
import 'package:easy_go_wallet/screens/starter.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
      DeviceType deviceType) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Easy Go Wallet',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: "Poppins",
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
                ),
            home: SplashScreen(),
       ),
    );
  }
}
