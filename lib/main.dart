import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Pages/layout_page.dart';
import 'package:flutter_batch_5/Pages/login_page.dart';
import 'package:flutter_batch_5/Pages/main_page.dart';
import 'package:flutter_batch_5/Pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(title: 'Login Page'),
      // home: const ProfilePage(title: 'Flutter Demo Profile Page'),
      // home: const LayoutPage(title: 'Flutter Demo Layout Page'),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
