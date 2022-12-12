import 'package:flutter/material.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/my_textfield.dart';
import 'package:loginui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign User in method

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              // logo

              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),

              // welcome back
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsecureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              // password textfield

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsecureText: true,
              ),

              SizedBox(
                height: 10,
              ),
              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),
              // sign in button
              MyButton(onTap: signUserIn),

              SizedBox(
                height: 50,
              ),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ]),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              // not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
