import 'package:flutter/material.dart';
import 'package:health_monitor/components/my_button.dart';
import 'package:health_monitor/components/my_textfield.dart';
import 'package:health_monitor/components/square_tile.dart';
import 'package:health_monitor/pages/home_page.dart';
import 'package:health_monitor/pages/signup_page.dart';
import 'package:health_monitor/pages/tension_page.dart';

import '../themes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final loginusernameController = TextEditingController();
  final loginpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.favorite,
                size: 100,
                color: colorBlue,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'С возвращением!',
                style: titleStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 24),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: loginusernameController,
                hintText: 'Почта',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: loginpasswordController,
                hintText: 'Пароль',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // sign in button
              MyButton(
                onTap: () {
                  if (loginusernameController.text != "" &&
                      loginpasswordController.text != "") {
                    if (loginusernameController.text != "") {
                      showDialog(
                          context: context,
                          builder: ((context) => AlertDialog(
                                title: Text('Предупреждение'),
                                content: Text('Неверная почта или пароль'),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ок'),
                                  ),
                                ],
                              )));
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  } else {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              title: Text('Предупреждение'),
                              content: Text('Введите почту и пароль'),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Ок'),
                                ),
                              ],
                            )));
                  }
                },
              ),

              const SizedBox(height: 50),

              // registration
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Еще не зарегистрировались?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Регистрация',
                      style: TextStyle(
                        color: Color(0xFF91a6f5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
