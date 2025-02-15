import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/custom_button.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/google_button.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/text_field_login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                    "Register Account",
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
                    "Hello there, register to continue",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: isDarkMode(context)
                            ? const Color.fromARGB(100, 255, 255, 255)
                            : const Color.fromARGB(124, 0, 0, 0)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldLogin(
                    labelText: "First Name",
                    controller: TextEditingController(),
                  ),
                  TextFieldLogin(
                    labelText: "Last Name",
                    controller: TextEditingController(),
                  ),
                  TextFieldLogin(
                    labelText: "Email Address",
                    controller: TextEditingController(),
                  ),
                  TextFieldLogin(
                    labelText: "Password",
                    controller: TextEditingController(),
                  ),
                  TextFieldLogin(
                    labelText: "Confirm Password",
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text(
                            "I agree to the terms and conditions",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: isDarkMode(context)
                                      ? const Color.fromARGB(100, 255, 255, 255)
                                      : const Color.fromARGB(124, 0, 0, 0),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Register',
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
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: isDarkMode(context)
                                        ? const Color.fromARGB(100, 255, 255, 255)
                                        : const Color.fromARGB(124, 0, 0, 0),
                                  )),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Login",
                              style:
                                  Theme.of(context).textTheme.titleSmall!.copyWith(
                                        color:  Colors.blue
                                      ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
