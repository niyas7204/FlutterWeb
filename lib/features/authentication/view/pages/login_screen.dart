import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/features/authentication/view/pages/signup_screen.dart';
import 'package:myapp/features/authentication/view/widgets/input_field.dart';
import 'package:myapp/utils/constants/colors.dart';
import 'package:myapp/utils/constants/white_spaces.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: SizedBox(
                // height: DeviceUtility.screenSize(context).height,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(height: 150, "assets/logo/cart.png"),
                    // WhiteSpaces.height20,
                    Text(
                      "Welcome Back",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),

                    Text(
                      "Discover Limitless Choices and Convenience",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    WhiteSpaces.height20,
                    Form(
                      child: Column(
                        children: [
                          InputField(
                            preficIcon: Iconsax.direct_right,
                            label: "Email",
                            controller: emailController,
                          ),
                          WhiteSpaces.height10,
                          InputField(
                            preficIcon: Iconsax.password_check,
                            label: "Password",
                            controller: emailController,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  Text("Remember Me"),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget Password?",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          WhiteSpaces.height20,
                          Container(
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Appcolors.primeryColor,
                            ),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    WhiteSpaces.height20,
                    GestureDetector(
                      onTap: () {
                        Get.to(SignupScreen());
                      },
                      child: Container(
                        height: 53,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.grey.withValues(alpha: .5),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                    ),

                    WhiteSpaces.height20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Divider(
                            color: Colors.grey,
                            thickness: .5,
                            indent: 60,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          "OR",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Flexible(
                          child: Divider(
                            color: Colors.grey,
                            thickness: .5,
                            endIndent: 60,
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
