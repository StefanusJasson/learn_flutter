import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Pages/home_page.dart';
import 'package:flutter_batch_5/Pages/profile_screen.dart';
import 'package:flutter_batch_5/Pages/setting_screen.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home'
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile'
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Setting'
              )
            ]
          ),
        ),

        body: TabBarView(
          children: [
            HomePage(),
            ProfileScreen(),
            SettingScreen(),
          ]
        ),
      ),
    );
  }
}