import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/features/authentication/controller/signup_controller.dart';
import 'package:myapp/features/authentication/view/widgets/input_field.dart';
import 'package:myapp/utils/constants/colors.dart';
import 'package:myapp/utils/constants/white_spaces.dart';
import 'package:myapp/features/authentication/view/widgets/decorations.dart';
import 'package:myapp/utils/validators/auth_validation.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signupController = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's create your account",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                WhiteSpaces.height10,
                Form(
                  key: signupController.signupFormKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: signupController.firstController,
                              decoration: WidgetDecorations.authInputDecoration(
                                context: context,
                                prefixIcon: Iconsax.user,
                                label: "First Name",
                              ),
                              validator: (value) =>
                                  AuthValidation.validateEmpty(),
                            ),
                          ),
                          WhiteSpaces.width10,
                          Expanded(
                            child: TextFormField(
                              decoration: WidgetDecorations.authInputDecoration(
                                context: context,
                                prefixIcon: Iconsax.user,
                                label: "Last Name",
                              ),
                              validator: (value) =>
                                  AuthValidation.validateEmpty(),
                              controller: signupController.lastNameController,
                            ),
                          ),
                        ],
                      ),
                      WhiteSpaces.height10,
                      TextFormField(
                        decoration: WidgetDecorations.authInputDecoration(
                          context: context,
                          prefixIcon: Iconsax.user,
                          label: "User Name",
                        ),
                        validator: (value) => AuthValidation.validateEmpty(),
                        controller: signupController.userNameController,
                      ),
                      WhiteSpaces.height10,
                      TextFormField(
                        decoration: WidgetDecorations.authInputDecoration(
                          context: context,
                          prefixIcon: Iconsax.direct_right,
                          label: "Email",
                        ),
                        validator: (value) => AuthValidation.emailValidation(),
                        controller: signupController.emailController,
                      ),

                      WhiteSpaces.height10,
                      TextFormField(
                        decoration: WidgetDecorations.authInputDecoration(
                          context: context,
                          prefixIcon: Iconsax.user,

                          label: "Phone Number",
                        ),
                        validator: (value) => AuthValidation.validateEmpty(),
                        controller: signupController.phoneController,
                      ),
                      WhiteSpaces.height10,
                      TextFormField(
                        decoration: WidgetDecorations.authInputDecoration(
                          context: context,
                          prefixIcon: Iconsax.password_check,
                          label: "Password",
                        ),
                        validator: (value) =>
                            AuthValidation.passwordValidation(),
                        controller: signupController.passwordController,
                      ),
                      WhiteSpaces.height10,
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'I agree to ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: 'Terms of use ',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      WhiteSpaces.height20,
                      GestureDetector(
                        onTap: () {
                          signupController.signUp();
                        },
                        child: Container(
                          height: 53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Appcolors.primeryColor,
                          ),
                          child: Center(
                            child: Text(
                              "Create Account",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
