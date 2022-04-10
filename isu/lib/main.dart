import 'package:flutter/material.dart';
import 'package:isu/screens/HomeScreen.dart';
import 'package:isu/screens/LoginScreen.dart';
import 'package:isu/screens/RegisterScreen.dart';
import 'package:isu/screens/SplashScreen.dart';
import 'package:isu/screens/OdevEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ISU',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new LoginScreen(),
        '/register': (BuildContext context) => new RegisterScreen(),
        '/splash': (BuildContext context) => new SplashScreen(),
        '/home': (BuildContext context) => new HomeScreen(),
        '/odev': (BuildContext context) => new OdevEkrani(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


// routes: <String, WidgetBuilder> {
//         '/splash': (BuildContext context) => new SplashScreen(),
//         '/login': (BuildContext context) => new LoginScreen(),
//         '/register': (BuildContext context) => new RegisterScreen(),
//       },