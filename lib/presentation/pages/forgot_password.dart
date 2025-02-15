import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? selectedOption = "phone"; // Default selected option

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
              SizedBox(height: 10),
              Text(
                "Forgot password 🤔",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: isDarkMode(context) ? Colors.white : Colors.black,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                "Select which contact details should we use to reset your password.",
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

              // Email Option
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: selectedOption == "email"
                      ? Border.all(color: Colors.blue)
                      : Border.all(color: Colors.grey.shade300),
                  color: selectedOption == "email"
                      ? Colors.blue.shade50
                      : Colors.white,
                ),
                child: RadioListTile<String>(
                  value: "email",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: const Text("Email"),
                  subtitle: const Text("michael.mitc@example.com"),
                  secondary: const Icon(Icons.email, color: Colors.black),
                  activeColor: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),

              // Phone Number Option
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: selectedOption == "phone"
                      ? Border.all(color: Colors.blue)
                      : Border.all(
                          color: const Color.fromARGB(255, 241, 243, 245)),
                  color: selectedOption == "phone"
                      ? Colors.blue.shade50
                      : Colors.white,
                ),
                child: RadioListTile<String>(
                  value: "phone",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  title: const Text("Phone Number"),
                  subtitle: const Text("(217) 555-0113"),
                  secondary: const Icon(Icons.phone, color: Colors.blue),
                  activeColor: Colors.blue,
                ),
              ),

              const SizedBox(height: 30),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
