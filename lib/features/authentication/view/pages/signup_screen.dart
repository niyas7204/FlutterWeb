import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myapp/features/authentication/view/widgets/input_field.dart';
import 'package:myapp/utils/constants/colors.dart';
import 'package:myapp/utils/constants/white_spaces.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InputField(
                              preficIcon: Iconsax.user,
                              label: "First Name",
                              controller: controller,
                            ),
                          ),
                          WhiteSpaces.width10,
                          Expanded(
                            child: InputField(
                              preficIcon: Iconsax.user,
                              label: "Last Name",
                              controller: controller,
                            ),
                          ),
                        ],
                      ),
                      WhiteSpaces.height10,
                      InputField(
                        preficIcon: Iconsax.user,
                        label: "User Name",
                        controller: controller,
                      ),
                      WhiteSpaces.height10,
                      InputField(
                        preficIcon: Iconsax.direct_right,
                        label: "Email",
                        controller: controller,
                      ),
                      WhiteSpaces.height10,
                      InputField(
                        preficIcon: Iconsax.user,
                        label: "Phone Number",
                        controller: controller,
                      ),
                      WhiteSpaces.height10,
                      InputField(
                        preficIcon: Iconsax.password_check,
                        label: "Password",
                        controller: controller,
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
                      Container(
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
