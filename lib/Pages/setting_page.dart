import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Pages/setting_screen.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Page'),
      ),

      body: SettingScreen(canGoBack: true,)
    );
  }
}