import 'package:flutter/material.dart';
import 'package:myapp/utils/constants/white_spaces.dart';
import 'package:myapp/utils/device/device_utility.dart';

class OnBoardingContent extends StatelessWidget {
  final String image, tittle, body;
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.tittle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            height: DeviceUtility.screenSize(context).height * .4,
            image,
          ),
          WhiteSpaces.height20,
          Text(
            tittle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          WhiteSpaces.height10,
          Text(
            body,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
