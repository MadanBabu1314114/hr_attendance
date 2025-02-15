import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/pages/forgot_password.dart';
import 'package:hrattendanceapp/presentation/pages/main_scroll_page.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/custom_button.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/google_button.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/text_field_login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.align_horizontal_center_outlined,
                size: 50,
                color: Colors.blue,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color:
                            isDarkMode(context) ? Colors.white : Colors.black),
                  ),
                  Text(
                    "to HR Attendee",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color:
                            isDarkMode(context) ? Colors.white : Colors.black),
                  ),
                  Text(
                    "Hello there, login to continue",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: isDarkMode(context)
                            ? const Color.fromARGB(100, 255, 255, 255)
                            : const Color.fromARGB(124, 0, 0, 0)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldLogin(
                    labelText: "Email",
                    controller: TextEditingController(),
                  ),
                  TextFieldLogin(
                    labelText: "Password",
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen()));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color: isDarkMode(context)
                                    ? const Color.fromARGB(100, 255, 255, 255)
                                    : const Color.fromARGB(124, 0, 0, 0),
                              ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: "Login",
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const MainScrollPage(),
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: isDarkMode(context)
                                ? const Color.fromARGB(100, 255, 255, 255)
                                : const Color.fromARGB(124, 0, 0, 0),
                          ),
                    ),
                  ),
                  GoogleButton(onTap: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
