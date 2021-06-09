import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharma_app/screens/signUpPage.dart';
import 'package:velocity_x/velocity_x.dart';

class MainPage extends StatefulWidget {
    @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            children: [
              VxBox(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.icecream),
                      "Businer".text.bold.xl2.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered()
                    ],
                  )
              ).padding(EdgeInsets.only(top:15)).make(),
              VxBox(
                  child:Column(

                    children: [
                      "find your fit".text.bold.xl.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered(),
                      "businness partner".text.xl.bold.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered(),
                    ],
                  )
              ).padding(EdgeInsets.only(top:25)).make(),
              13.heightBox,
              "join the worlds's largest business community".text.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered(),

              // Avatar(),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      child: ClipRRect(borderRadius: BorderRadius.circular(100),
                          child: Image.asset("assets/images/women.jpg",fit: BoxFit.cover,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:35.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ClipRRect(borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/men.jpg",fit: BoxFit.cover,)
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/women.jpg",fit: BoxFit.cover,)
                  ),
                ),
              ),
              VxBox(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      "already have an account! ".text.bold.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered(),
                      TextButton(
                          onPressed:(){
                            Navigator.push(context,MaterialPageRoute(builder: (_)=> LoginScreen()));

                          } ,
                          child: "Sign In ".text.bold.fontFamily("Poppins").color(Color(0xFF5D66D3)).makeCentered()),

                    ],
                  )
              ).padding(EdgeInsets.only(top:30)).make(),


              Container(
                alignment: Alignment.bottomCenter,
                child: ZStack([
                  (
                     VxBox(

                    child: InkWell(
                      onTap:()async{
                        await _auth.signOut();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                      },
                  child: "Sign Up with Number".text.align(TextAlign.center ).white.make().p16()),
                ).height(context.screenHeight*0.16).width(context.screenWidth).blue900.topRounded().make().pOnly(top:8)),

                     VxBox(
                        child: "Sign Up with Facebook".text.align(TextAlign.center ).blue900.make().p16(),
                      // ignore: file_names
                      ).height(context.screenHeight*0.10).width(context.screenWidth).white.topRounded().make().pOnly(top: 60),


                  ],),
              )

              // ignore: file_names



            ],
          ),
        ),
      ),
    );
      }
}
