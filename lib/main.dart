import 'package:flutter/material.dart';
import 'package:wori_app/chat_page.dart';
import 'package:wori_app/core/theme.dart';
import 'package:wori_app/message_page.dart';

void main() {
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
      home: ChatPage(),
    );
  }
}
