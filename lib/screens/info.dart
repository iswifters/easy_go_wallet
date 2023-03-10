import 'package:easy_go_wallet/screens/sign_up.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.fromLTRB(27,0,25,0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.all(20)),
                      Text("Welcome!", style:TextStyle(color:Color(0xff00444f),fontSize: 30, fontWeight:FontWeight.w600)),
                      const Padding(padding: EdgeInsets.all(5)),
                      Card(
                        color: Color(0xff58ab27),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("What We Offer", style:TextStyle(color: Color(0xff00444f),fontSize: 22, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                              title: Text("Recieve transactions with ease✔️", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                              title: Text("Send money with ease✔️", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                              title: Text("A secured system✔️", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                            title: Text("What You Need", style:TextStyle(color: Color(0xff00444f),fontSize: 22, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                            title:Text("Your Phone Number🧩", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),
                            ),
                            ListTile(
                            title: Text("BVN🧩", style:TextStyle(color:Colors.black54,fontSize: 14, fontWeight:FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Want to Join our Community?", style:TextStyle(color: Color(0xff00444f),fontSize: 13, fontWeight:FontWeight.w600)),
                    ]
                ),

                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 60),
                    primary: Color(0xff00444f),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)
                    ),
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUp()));},
                  child: const Text('Join EasyGo', style:TextStyle(fontWeight:FontWeight.w200)),
                ),
                Padding(padding: EdgeInsets.all(10)),
              ],
            ),
          ),
      ),
      );


  }
}