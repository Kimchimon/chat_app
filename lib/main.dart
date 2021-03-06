import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatting App',
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return const ChatScreen();
          }
          return const LoginSignupScreen();
        },
      ),
    );
  }
}
