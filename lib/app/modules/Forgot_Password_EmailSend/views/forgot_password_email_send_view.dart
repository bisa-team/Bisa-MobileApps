import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_email_send_controller.dart';

class ForgotPasswordEmailSendView
    extends GetView<ForgotPasswordEmailSendController> {
  const ForgotPasswordEmailSendView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              width: 400,
              child: Image(
                image: AssetImage("assets/images/ForgetPasswordEmailSent.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              width: 1000,
              height: 1000,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                children: [
                  const SizedBox(
                    height: 500,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF25DB91),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Buka Email',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
