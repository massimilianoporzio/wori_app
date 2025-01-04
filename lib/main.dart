import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:wori_app/core/theme.dart';
import 'package:wori_app/login_page.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(showColors: true),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
