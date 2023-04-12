import 'package:flutter/material.dart';
import 'package:health_monitor/pages/login_page.dart';
import 'package:health_monitor/pages/signup_page.dart';
import 'package:health_monitor/themes.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

void login(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}

void signup() {}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: size.height * 0.5,
            margin: EdgeInsets.only(top: 50, left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color(0xFFe8eefe),
                borderRadius: BorderRadius.all(Radius.elliptical(60, 60))),
            child: Image.asset("assets/images/main_logo.png"),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Ваш персональный помощник в контроле здоровья",
            style:
                titleStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Container(
              width: size.width,
              height: size.height * 0.08,
              margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF91a6f5),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                'Вход',
                style: titleStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
            child: Container(
              width: size.width,
              height: size.height * 0.08,
              margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                'Регистрация',
                style: titleStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
