import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  //final String title;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xFF91a6f5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Вход",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
