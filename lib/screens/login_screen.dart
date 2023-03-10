import 'package:easy_go_wallet/constants/clipper.dart';
import 'package:easy_go_wallet/screens/base_screen.dart';
import 'package:easy_go_wallet/screens/sign_up.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    Widget _buildEmail(){
      return Container (
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(3,3),
              blurRadius: 6,
              color: Colors.grey.shade400
            )
          ]
        ),
        child:TextFormField(
          validator: (value){
            if(value == null || value.isEmpty) {
              return "Enter your Email";
            }
          },
          controller: emailController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
            hintText: 'Enter your email'
          ),
        ),
      );
    }

    Widget _buildPassword(){
      return Container (
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(3,3),
                  blurRadius: 6,
                  color: Colors.grey.shade400
              )
            ]
        ),
        child:TextFormField(
          validator: (value){
            if(value == null || value.isEmpty) {
              return "Enter your Password";
            }
          },
          controller: passwordController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                  Icons.lock_outline_rounded
              ),
              hintText: 'Enter your password'
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              height: 210,
              child: Stack(
                children: [
                  CustomPaint(
                    size:Size(MediaQuery.of(context).size.width,300),
                    painter: RPSCustomPainter(),
           ),
                  Positioned(
                      top : 16,
                      right: -5,
                      child: CustomPaint(
                        size:Size(MediaQuery.of(context).size.width,300),
                        painter: RPSCustomPainter(),
                      )
                  ),

                  Positioned(
                      top : 160,
                      left: 30,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 26,
                            ),
                          ),
                          SizedBox(height:10),
                          Text('Please sign in to continue',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ]
                      )
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal:28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height:25),
                    _buildEmail(),
                    const SizedBox(height:20),
                    _buildPassword(),
                    const SizedBox(height:20),
                    const Text('Forgot Password?', style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff58ab27),
                    ),
                    ),
                    const SizedBox(height:40),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient:LinearGradient (
                              colors: [
                                Color(0xff00444f),
                                Color(0xff58ab27),

                              ]
                          )
                      ),

                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const BaseScreen()));
                        },
                        child: Row(
                          children:const [
                            SizedBox(width: 20,),
                            Text('LOGIN', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.white
                            ),),
                            SizedBox(width:20),
                            Icon(Icons.arrow_forward, color:Colors.white),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height:30),
                    Row (
                      children:  [
                        const Text("Don't have an account? ", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUp()));
                          },
                          child: const Text("Sign up", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff58ab27),
                          ),),
                        ),
                      ],
                    )
                  ],
                )

            )
          ]
        ),
      )
    );
  }
}
