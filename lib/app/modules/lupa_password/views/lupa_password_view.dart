import 'package:bisa/app/modules/template/background_template.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordView extends GetView<LupaPasswordController> {
  const LupaPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackgroundTemplate(
          widget: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            children: [
              const SizedBox(height: 150),
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 15),
              const Text(
                "Lupa Password?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Mohon masukkan email agar kami dapat mengirim email untuk mereset password Anda",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  )),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 1000,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.person)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: 1000,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF25DB91),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Kirim Email',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
