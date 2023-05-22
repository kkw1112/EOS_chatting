import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            //TODO: top, left, right 모두 0으로 설정       완
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              //TODO: height 300으로 설정                  완
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO: background.png 넣기             완
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.fill
                ),
              ),
              child: Container(
                //TODO: padding top 90, left 20           완
                padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                child: Column(
                  //TODO: 왼쪽 정렬, **************           완
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        //TODO: letter spacing 1.0, font size 25, color white,               완
                        text: 'Welcome ',
                          style: TextStyle(letterSpacing:  1.0, fontSize: 25, color: Colors.white),
                        children: [
                          TextSpan(
                            //TODO: letter spacing 1.0, font size 25, color white, bold          완
                            text: 'to EOS chat',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]
                      )
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Signup to continue', style: TextStyle(letterSpacing: 1.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ),
          Positioned(
            top: 150,
            child: Container(
              height: 280.0,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: !isSignupScreen ? Palette.activeColor : Palette.textColor1),
                            ),
                            if(!isSignupScreen)
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              height: 2,
                              width: 55,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: isSignupScreen ? Palette.activeColor : Palette.textColor1),
                            ),
                            if(isSignupScreen)
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                              height: 2,
                              width: 55,
                              color: Colors.green,
                            )
                          ],
                        )
                      )
                    ],
                  ),
                  Container(
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle, color: Palette.iconColor,),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.all(Radius.circular(35)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.textColor1),          //Color(Palette.textColor1) vs Palette.textColor1
                                borderRadius: BorderRadius.all(Radius.circular(35))
                              ),
                            ),
                          )
                        ]
                      ),
                    )
                  )
                ]
              ),
            )
          )
        ],
      )
    );
  }
}
