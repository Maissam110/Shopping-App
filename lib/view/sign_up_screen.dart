import 'package:e_comerence_app/utils/app_textstyles.dart';
import 'package:e_comerence_app/view/widegts/custom_textfield.dart';
import 'package:e_comerence_app/view/widegts/main_screen.dart';
import 'package:e_comerence_app/view/widegts/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Create Account",
                style: AppTextStyle.withColor(
                  AppTextStyle.h1,
                  Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              SizedBox(height: 8),

              Text(
                "Sign Up to get started",
                style: AppTextStyle.withColor(
                  AppTextStyle.bodyLarge,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  // Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              SizedBox(height: 40),

              // Full Name TextField
              CustomTextfield(
                label: "Full Name",
                prefixIcon: Icons.person_outline,
                keyboardType: TextInputType.name,
                // isPassword: true,
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an name";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16),
              //  // Email Text Form Field
              CustomTextfield(
                label: "Email",
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an email";
                  }
                  if (!GetUtils.isEmail(value)) {
                    return "Please enter your valid Email.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              //  // Password Form Field
              CustomTextfield(
                label: "Password",
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an Password";
                  }

                  return null;
                },
              ),

              SizedBox(height: 16),
              //  // Conform Password Form Field
              CustomTextfield(
                label: "Conform Password",
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                controller: _conformPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please conform your Password";
                  }
                  if (value != _passwordController) {
                    return "Passwprd do not match";
                  }

                  return null;
                },
              ),

              // Sign Up Button
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () => Get.off(() => MainScreen()),
                  child: Text(
                    "Sign Up",
                    style: AppTextStyle.withColor(
                      AppTextStyle.buttonMedium,
                      Colors.white,
                    ),
                  ),
                ),
              ),

              //  Sign in Text Button
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: AppTextStyle.withColor(
                      AppTextStyle.bodyMedium,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => SigninScreen()),
                    child: Text(
                      "Sign in",
                      style: AppTextStyle.withColor(
                        AppTextStyle.buttonMedium,
                        Theme.of(context).primaryColor,
                      ),
                    ),
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
