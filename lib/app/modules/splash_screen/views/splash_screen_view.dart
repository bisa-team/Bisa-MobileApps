import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';
import '../../template/background_template.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SplashScreenController>(
          init: SplashScreenController(),
          initState: (state) {
            Timer.periodic(const Duration(seconds: 2), (timer) {
              Get.offAllNamed(Routes.LOGIN);
              timer.cancel();
            });
          },
          builder: (controller) {
            return BackgroundTemplate(
              widget: Center(
                child: Image.asset("assets/images/logo.png"),
              ),
            );
          },
        ),
      ),
    );
  }
}
