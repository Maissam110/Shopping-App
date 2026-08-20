import 'package:e_comerence_app/controllers/auth_controller.dart';
import 'package:e_comerence_app/utils/app_textstyles.dart';
import 'package:e_comerence_app/view/forgot_password_screen.dart';
import 'package:e_comerence_app/view/sign_up_screen.dart';
import 'package:e_comerence_app/view/widegts/custom_textfield.dart';
import 'package:e_comerence_app/view/widegts/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  "WellCome Back!",
                  style: AppTextStyle.withColor(
                    AppTextStyle.h1,
                    Theme.of(context).textTheme.bodyLarge!.color!,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Sign in to continue shopping",
                  style: AppTextStyle.withColor(
                    AppTextStyle.bodyLarge,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),
                SizedBox(height: 40),
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
                SizedBox(height: 8),
                //  Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Get.to(() => ForgotPasswordScreen()),
                    child: Text(
                      "Forgot Password",
                      style: AppTextStyle.withColor(
                        AppTextStyle.buttonMedium,
                        Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
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
                    onPressed: _handleSignIn,
                    child: Text(
                      "Sign In",
                      style: AppTextStyle.withColor(
                        AppTextStyle.buttonMedium,
                        Colors.white,
                      ),
                    ),
                  ),
                ),

                //  Sign up Text Button
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: AppTextStyle.withColor(
                        AppTextStyle.bodyMedium,
                        isDark ? Colors.grey[400]! : Colors.grey[600]!,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => SignUpScreen()),
                      child: Text(
                        "Sign up",
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
      ),
    );
  }

  //  Sign in Button OnPressed
  void _handleSignIn() {
    final AuthController authController = Get.find<AuthController>();
    authController.login();
    Get.offAll(() => MainScreen());
  }
}
