import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Widgets/textField_widget.dart';
import 'package:flutter_batch_5/blocs/login_cubit.dart';
import 'package:flutter_batch_5/blocs/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool showErrorMessage = false;
  void onLogin(BuildContext context) {
    if (usernameController.text == '') {
      setState(() {
        showErrorMessage = true;
      });
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
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
            height: 320,
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
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextfieldWidget(
                    text: 'Username',
                    controller: usernameController,
                  ),
                  TextfieldWidget(
                    text: 'Password',
                    controller: passwordController,
                    obscureText: true,
                  ),
                  Builder(
                    builder: (context) {
                      if (showErrorMessage) {
                        return Text(
                          'Please Enter Username and password',
                          style: TextStyle(color: Colors.red),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      FilledButton(
                        onPressed: () {
                          if (usernameController.text == '') {
                            setState(() {
                              showErrorMessage = true;
                            });
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Text('Login'),
                      ),
                      FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
