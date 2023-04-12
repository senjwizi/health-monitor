import 'package:flutter/material.dart';
import 'package:health_monitor/components/my_button.dart';
import 'package:health_monitor/components/my_button_back.dart';
import 'package:health_monitor/components/my_button_signup.dart';
import 'package:health_monitor/components/my_textfield.dart';
import 'package:health_monitor/components/square_tile.dart';
import 'package:health_monitor/pages/tension_page.dart';

import '../themes.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) {
    if (usernameController.text != "" && passwordController.text != "") {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //const SizedBox(height: 50),

              const SizedBox(height: 10),

              // welcome back, you've been missed!
              Text(
                'Регистрация',
                style: titleStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 24),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'Имя',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Почта',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Пароль',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Повторите пароль',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButtonSignup(
                onTap: () {
                  if (usernameController.text != "" &&
                      passwordController.text != "" &&
                      emailController.text != "" &&
                      confirmPasswordController.text != "") {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              title: Text('Регистрация'),
                              content: Text('Вы успешно зарегистрированы!'),
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
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              title: Text('Предупреждение'),
                              content: Text('Заполните все поля'),
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

              const SizedBox(height: 10),
              MyButtonBack(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
