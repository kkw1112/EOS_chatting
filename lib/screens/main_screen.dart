import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  // TODO : isSignupScreen 변수 선언     완
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: background color로 palette의 backgroundColor 설정,         완
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
                      //TODO: height 5.0으로 글 사이 간격 주기                  완
                      height: 5.0,
                    ),
                    Text(
                      //TODO: spacing 1.0, color white                       완
                      'Signup to continue', style: TextStyle(letterSpacing: 1.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ),
          Positioned(
            //TODO: top 150                   완
            top: 150,
            child: Container(
              //TODO: height 280.0, padding 모두 20, width 핸드폰 가로 길이 - 40       완
              height: 280.0,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              //TODO: margin 가로로 양쪽 20                          완
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: BoxDecoration(
                //TODO: color white, border radius 15              완
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    //TODO: color black, 투명도 0.3, blur radius 15, spread radius 5        완
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    //TODO: mainAxisAlignment.spaceAround                  완
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              //TODO: font size 16, bold                  완
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: !isSignupScreen ? Palette.activeColor : Palette.textColor1),
                              //TODO: isSignupScreen이 false면 palette의 activeColor, true면 palette의 textColor1              완

                            ),
                            //TODO: isSignupScreen이 false일 때만 밑줄이 생기도록             완
                            if(!isSignupScreen)
                            Container(
                              //TODO: margin top만 3, height 2, width 55, color green     완
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
                              //TODO: font size 16, bold                        완
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: isSignupScreen ? Palette.activeColor : Palette.textColor1),
                              //TODO: isSignupScreen이 true면 palette의 activeColor, false면 palette의 textColor1             완

                            ),
                            //TODO: isSignupScreen이 true일 때만 밑줄이 생기도록                 완
                            if(isSignupScreen)
                            Container(
                              //TODO: margin top만 3, height 2, width 55, color green          완
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
                              //TODO: prefix icon 원하는 icon 입력, color는 palette의 iconColor         완
                              prefixIcon: Icon(Icons.account_circle, color: Palette.iconColor,),
                              enabledBorder: OutlineInputBorder(
                                //TODO: borderside 색은 palette의 textColor1                 완
                                borderSide: BorderSide(color: Palette.textColor1),
                                //TODO: border radius는 모두 35                              완
                                borderRadius: BorderRadius.all(Radius.circular(35)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                //TODO: border 색은 palette의 textColor1             완
                                borderSide: BorderSide(color: Palette.textColor1),          //Color(Palette.textColor1) vs Palette.textColor1
                                //TODO: border radius는 모두 35                             완
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
