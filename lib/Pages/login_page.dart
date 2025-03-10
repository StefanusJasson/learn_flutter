import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Text('LOGIN', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Text('Username:'),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Username'),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Text('Password:'),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(), 
                        labelText: 'Username'
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
                child: FilledButton(
                  onPressed: (){
                    print('Username: ${usernameController.text}');
                    print('Password: ${passwordController.text}');
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login'),
                    ],
                  )),
              )
            ],
          ),
        ),
      ),
    );
  }
}