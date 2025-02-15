import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/pages/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: isDarkMode(context) ? Colors.black : Colors.blue,
        ),
        child: const Center(
          child: Icon(
            Icons.align_horizontal_center_outlined,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
