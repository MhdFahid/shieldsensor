import 'package:flutter/material.dart';
import 'package:project/responsive/mobile_screen.dart';
import 'package:project/responsive/responsive.dart';
import 'package:project/screen_web/web_main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SofiaSans'),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 7, 37),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: ResponsiveLayout(
            mobileScreenLayout: Mobile(),
            webScreenLayout: WebMain(),
          ),
        ),
      ),
    );
  }
}
