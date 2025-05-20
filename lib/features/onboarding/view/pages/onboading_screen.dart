import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:myapp/features/onboarding/controller/onboard_controller.dart';
import 'package:myapp/features/onboarding/view/widgets/onBodingContent.dart';
import 'package:myapp/utils/constants/colors.dart';
import 'package:myapp/utils/constants/white_spaces.dart';
import 'package:myapp/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardController = Get.put(OnboardController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              child: PageView(
                onPageChanged: (value) {
                  log("on page changed");
                  onBoardController.updatePageIndicater(value);
                },
                controller: onBoardController.onBoardPageController,
                children: [
                  OnBoardingContent(
                    image: "assets/logo/cart.png",
                    tittle: "On boarding Page one",
                    body:
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                  OnBoardingContent(
                    image: "assets/logo/cart.png",
                    tittle: "On boarding Page Two",
                    body:
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                  OnBoardingContent(
                    image: "assets/logo/cart.png",
                    tittle: "On boarding Page Three",
                    body:
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 70,
              left: 20,
              child: SmoothPageIndicator(
                onDotClicked: (index) {
                  log("dot nav clicked");
                  onBoardController.dotNavigation(index);
                },
                controller: onBoardController.onBoardPageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 6,
                  dotColor: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: DeviceUtility.getAppBarHeight(),
              right: 20,
              child: TextButton(
                onPressed: onBoardController.skipPage,
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: SizedBox(
                height: 40,
                width: 60,
                child: GestureDetector(
                  onTap: onBoardController.nextPage,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: Appcolors.primeryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
