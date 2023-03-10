import 'package:easy_go_wallet/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constants/clipper.dart';
import 'base_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal:15),
            child: Column(
                children:[
                  SizedBox(
                    height: 40,
                  ),
                  Text("PROFILE", style:TextStyle(color:Color(0xff00444f),fontSize: 30, fontWeight:FontWeight.w600)),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/images/j.jpeg'),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                   Text("Ruth WTFC'23", style:TextStyle(color: Color(0xff00444f),fontSize: 15, fontWeight:FontWeight.w600)),
                   Text("Ruth@womentechsters.org", style:TextStyle(color: Color(0xff00444f),fontSize: 15, fontWeight:FontWeight.w600)),
                  SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Edit Personal Info', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Security', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('QR Code', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Wallet Id', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Settings', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Notifications', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Contact Us', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(500, 25),
                      primary:Color(0xff58ab27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Log Out', style:TextStyle(fontWeight:FontWeight.w200)),
                  ),


            ],
          ),
        )
    );
  }
}
