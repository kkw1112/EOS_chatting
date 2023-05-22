import 'package:eos_chatting/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:eos_chatting/screens/main_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChatScreen(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chatting App',
        theme: ThemeData(
          primarySwatch: Colors.green, fontFamily: 'Teko',
        ),
        home: LoginSignUpScreen()
    );
  }
}