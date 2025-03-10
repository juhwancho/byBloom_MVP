import 'package:bybloom_mvp/Auth/RegisterPage.dart';
import 'package:bybloom_mvp/Auth/loginPage.dart';
import 'package:bybloom_mvp/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'byBloom MVP',
      initialRoute: '/',
      routes: {'/':(context)=>LoginPage(),
                '/Main':(context)=>MainScreen(),
                '/Register':(context)=>RegisterPage()},

      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.grey
          )
        )
      ),
    );
  }
}

