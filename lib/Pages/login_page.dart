import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
        title: Text('Login Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
          ),
          child: SizedBox(
            width: 350,
            height: 300,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
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
                      Text('Username:',
                      style: TextStyle(fontSize: 16),),
                      SizedBox(
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
                      Text('Password:',
                      style: TextStyle(fontSize: 16),),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(), 
                            labelText: 'Username',
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
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
        ),
      ),
    );
  }
}