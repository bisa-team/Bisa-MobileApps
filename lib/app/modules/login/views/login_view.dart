import 'package:bisa/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../../template/background_template.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: BackgroundTemplate(
            widget: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              children: [
                const SizedBox(height: 150),
                Image.asset("assets/images/logo.png"),
                const SizedBox(height: 15),
                const Text(
                  "Masuk akun",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.person),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Obx(
                  () => TextField(
                    obscureText: controller.isHidden.value,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: IconButton(
                        onPressed: () => controller.isHidden.toggle(),
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Lupa password?",
                        style: TextStyle(
                          color: Color(0xff656260),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff25DB91),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(999),
                      )),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 0.00001),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum punya akun?"),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: const Text(
                        "Daftar sekarang",
                        style: TextStyle(
                          color: Color(0xff25DB91),
                          decoration: TextDecoration.underline,
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
}
