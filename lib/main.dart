import 'package:flutter/material.dart';
import 'package:health_monitor/data/parameter_data.dart';
import 'package:health_monitor/pages/home_page.dart';
import 'package:health_monitor/pages/login_page.dart';
import 'package:health_monitor/pages/signup_page.dart';
import 'package:health_monitor/pages/welcome_page.dart';
import 'package:provider/provider.dart';
import 'package:health_monitor/pages/tension_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ParameterData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}
