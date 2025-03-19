import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Utils/Extension/routes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, this.canGoBack = false});

  final bool canGoBack;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final username = 'User';

  @override
  Widget build(BuildContext context) {
    void changeName(){
      Navigator.pushNamed(context, AppRoutes.login);
    }

    void backHome(){
      Navigator.pop(context);
    }

    if(widget.canGoBack){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Welcome $username',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              FilledButton(
                onPressed: changeName, 
                child: Text('Change Name')
              ),
              FilledButton(
                onPressed: backHome, 
                child: Text('Back')
              )
            ],
          )
        ),
      );
    }
    else{
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Welcome $username',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              FilledButton(
                onPressed: changeName, 
                child: Text('Change Name')
              ),
            ],
          )
        ),
      );
    }
  }
}
