import 'package:flutter/material.dart';
import 'package:easy_go_wallet/screens/login_screen.dart';
import 'package:easy_go_wallet/screens/info.dart';

class StartPage extends StatelessWidget {
const StartPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(

        padding: const EdgeInsets.fromLTRB(27,0,25,0),
        child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top:10),
                height:130,
                child: Image.asset('assets/images/easygo3.png'),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Recieve/Send money with Ease.", style:TextStyle(color: Color(0xff00444f),fontSize: 30, fontWeight:FontWeight.w600)),
                    const Padding(padding: EdgeInsets.all(10)),
                    Text("Transact easily with EasyGo.", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),

                  ]

              ),

              Padding(padding: EdgeInsets.all(15)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 60),
                  primary: Color(0xff00444f),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                ),

                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const InfoPage()));},
                child: const Text('Register', style:TextStyle(fontWeight:FontWeight.w200)),
              ),


              Padding(padding: EdgeInsets.all(10)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 60),
                  primary:Color(0xff58ab27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));},
                child: const Text('Log In', style:TextStyle(fontWeight:FontWeight.w200)),
              )
            ]
        ),
      ),
    ),
  );
}
}
