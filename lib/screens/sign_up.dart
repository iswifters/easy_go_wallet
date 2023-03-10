import 'package:easy_go_wallet/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constants/clipper.dart';
import 'base_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var numberController =  TextEditingController();
  var bvnController =  TextEditingController();
  var  nameController = TextEditingController();

  Widget _buildName(){
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
            return "Enter your Name";
          }
        },
        controller: nameController,
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.person_outline,
            ),
            hintText: 'Enter your Name'
        ),
      ),
    );
  }
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
  Widget _buildNumber(){
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
            return "Enter your Phone Number";
          }
        },
        controller: numberController,
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.phone_android_outlined,
            ),
            hintText: 'Enter your phone number'
        ),
      ),
    );
  }
  Widget _buildBvn(){
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
            return "Enter your BVN";
          }
        },
        controller: bvnController,
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top:14),
            prefixIcon: Icon(
              Icons.key_off_outlined,
            ),
            hintText: 'Enter your bvn'
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
              Icons.lock_outline,
            ),
            hintText: 'Enter your Password'
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children:[
                Container(
                  height: 100,
                  child: Stack(
                    children: [


                      Positioned(
                          top : 50,
                          left: 30,

                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Sign up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28,
                                    color: Color(0xff00444f),
                                  ),
                                ),

                              ]
                          )
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal:25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height:20),
                        _buildName(),
                        const SizedBox(height:20),
                        _buildEmail(),
                        const SizedBox(height:20),
                        _buildNumber(),
                        const SizedBox(height:20),
                        _buildBvn(),
                        const SizedBox(height:20),
                        _buildPassword(),


                        const SizedBox(height:30),
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
                                Text('SIGN UP', style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.white
                                ),),
                                SizedBox(width:10),
                                Icon(Icons.arrow_forward, color:Colors.white),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height:12),
                        Row (
                          children:  [
                            const Text("  Have an account? ", style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black
                            ),),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
                              },
                              child: const Text(" Sign In", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff00444f),
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
