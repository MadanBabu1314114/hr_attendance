import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/custom_button.dart';
import 'package:hrattendanceapp/presentation/widgets/login_widgets/text_field_login.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  const EnterNewPasswordScreen({Key? key}) : super(key: key);

  @override
  _EnterNewPasswordScreenState createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter New Password",
               style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: isDarkMode(context) ? Colors.white : Colors.black,
                    ),
              ),

              const SizedBox(height: 8),
              Text(
                "Please enter your new password",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isDarkMode(context) ? Colors.white : Colors.black,
                    ),
              ),

              const SizedBox(height: 20),

              // Image Illustration (Replace with your asset)
              Center(
                child: Image.network(
                  'https://png.pngtree.com/png-clipart/20230118/original/pngtree-reset-password-to-gain-more-secure-account-png-image_8920326.png', // Add your image in assets
                  width: 250,
                ),
              ),
              const SizedBox(height: 20),

              // Enter New Password Field
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                      side: BorderSide(
                          color: isDarkMode(context)
                              ? Colors.white
                              : Colors.blue)),
                ),
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Enter New Password",
                    hintText: "Enter New Password",
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Re-Enter Password Field
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(3),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                      side: BorderSide(
                          color: isDarkMode(context)
                              ? Colors.white
                              : Colors.blue)),
                ),
                child: TextField(
                  obscureText: !_isConfirmPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Re-Enter Password",
                    hintText: "Re-Enter Password",
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Update Password Button
              CustomButton(onTap: (){}, text: "Update Password",),
            ],
          ),
        ),
      ),
    );
  }
}
