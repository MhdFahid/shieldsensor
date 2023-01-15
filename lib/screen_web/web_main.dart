import 'package:flutter/material.dart';
import 'package:project/screen_web/screen_about.dart';
import 'package:project/screen_web/screen_contact_us.dart';
import 'package:project/screen_web/screen_services.dart';

import 'home_wed_screen.dart';

class WebMain extends StatelessWidget {
  const WebMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeWebScreen(),
      ),
    );
  }
}
